-- local on_attach = require("plugins.configs.lspconfig").on_attach

local metals_config = require("metals").bare_config()

metals_config.settings = {
  showImplicitArguments = true,
  enableSemanticHighlighting = false,
  excludedPackages = {
    "akka.actor.typed.javadsl",
    "com.github.swagger.akka.javadsl"
  },
}

metals_config.init_options.statusBarProvider = "on"
metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

return metals_config
