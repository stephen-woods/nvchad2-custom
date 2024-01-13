local M = {}

-- Remap page forard/backward to center cursor in the middle of the screen
vim.keymap.set({'n','v'},'<C-f>','<C-f>zz')
vim.keymap.set({'n','v'},'<C-b>','<C-b>zz')
vim.keymap.set({'n','v'},'<C-d>','<C-d>zz')
vim.keymap.set({'n','v'},'<C-u>','<C-u>zz')

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.metals = {
  plugin = true,
  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition"
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },


    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["gds"] = {
      function()
        vim.lsp.buf.document_symbol()
      end,
      "LSP document synbol",
    },

    ["gws"] = {
      function()
        vim.lsp.buf.workspace_symbol()
      end,
      "LSP workplace synbol",
    },

    ["<leader>cl"] = {
      function()
        vim.lsp.codelens.code_action()
      end,
      "LSP code lens",
    },

    ["<leader>sh"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>rn"] = {
      function()
        vim.lsp.buf.rename()
      end,
      "LSP rename",
    },

    ["<leader>fm"] = {
      function ()
        vim.lsp.buf.format()
      end,
      "LSP Format"
    },

    ["<leader>ca"] = {
      function ()
        vim.lsp.buf.code_action()
      end,
      "LSP code action"
    },

  }
}
return M
