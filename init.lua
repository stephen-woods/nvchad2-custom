vim.g.dap_virtual_text = true

vim.opt.relativenumber = true

-- local nvim_metals_group = vim.apfi.nvim_create_augroup("nvim-metals", { clear = true })
--   vim.api.nvim_create_autocmd("FileType", {
--     pattern = { "scala", "sbt", "java" },
--     callback = function()
--       require("metals").initialize_or_attach({})
--     end,
--     group = nvim_metals_group,
--   })
