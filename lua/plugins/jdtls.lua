return {
  {
    "mfussenegger/nvim-jdtls",
    ---@type lspconfig.options.jdtls
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      jdtls = function(opts)
        local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
        local jvmArg = "-javaagent:" .. install_path .. "/lombok.jar"
        table.insert(opts.cmd, "--jvm-arg=" .. jvmArg)
        return opts
      end,
    },
    keys = {
      -- { "<leader>cxv", require("jdtls").extract_variable_all(bufopts), desc = "Flutter run build watcher" },
      -- --       { "<space>ev", require('jdtls').organize_imports(bufopts), desc = "Flutter run build watcher" },
      --       { "<space>ec", require('jdtls').organize_imports(bufopts), desc = "Flutter run build watcher" },
      --       { "<C-o>", require('jdtls').organize_imports(bufopts), desc = "Flutter run build watcher" },
      --       { "<C-o>", require('jdtls').organize_imports(bufopts), desc = "Flutter run build watcher" },
      -- -- nnoremap("<C-o>", jdtls.organize_imports, bufopts, "Organize imports")
      -- nnoremap("<space>ev", jdtls.extract_variable, bufopts, "Extract variable")
      -- nnoremap("<space>ec", jdtls.extract_constant, bufopts, "Extract constant")
      -- vim.keymap.set('v', "<space>em", [[<ESC><CMD>lua require('jdtls').extract_method(true)<CR>]],
      --   { noremap=true, silent=true, buffer=bufnr, desc = "Extract method" }) e
      --     }
    },
  },
}
