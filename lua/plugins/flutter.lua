return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    keys = {
      -- NO emulators
      { "<leader>cgx", "<cmd>FlutterRun<cr>", desc = "Flutter run" },
      { "<leader>cgr", "<cmd>FlutterRestart<cr>", desc = "Flutter restart" },
      -- use firebase emulators
      -- { "<leader>cfx", "<cmd>FlutterRun<cr>", desc = "Flutter run - using firebase emulators" },
      -- -- widgetbook
      -- { "<leader>cfx", "<cmd>FlutterRun lib/widgetbook.dart<cr>", desc = "Flutter run - widgetbook" },
      {
        "<leader>cge",
        "<cmd>te firebase emulators:start --import firebase_emulator_state --export-on-exit firebase_emulator_state<cr>",
        desc = "Flutter run emulators",
      },
      { "<leader>cgb", "<cmd>te dart run build_runner watch<cr>", desc = "Flutter run build watcher" },
    },
    config = function()
      require("flutter-tools").setup({
        debugger = {
          enabled = true,
          register_configurations = function(_)
            require("dap").configurations.dart = {}
            require("dap.ext.vscode").load_launchjs()
          end,
        },
      })
    end,
  },
}
