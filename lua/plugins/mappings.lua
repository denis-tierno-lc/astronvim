return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          [";"] = { ":" },
          -- ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          ["<Leader>ss"] = { ':lua require("neotest").run.run()<CR>' },
          ["<Leader>sf"] = { ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>' },
          ["<Leader>sl"] = { ':lua require("neotest").run.run_last()<CR>' },
          ["<Leader>sa"] = { ':lua require("neotest").summary.toggle()<CR>' },
          ["<Leader>sd"] = { ':lua require("neotest").run.run({strategy = "dap"})<CR>' },
          ["<Leader>so"] = { ':lua require("neotest").output.open()<CR>' },
          ["<Leader>sx"] = { ':Neotest attach<CR>' },
          ["<Leader>xx"] = { ':CopilotChatToggle<CR>' },
          ["<Leader>fs"] = { ':lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>' }
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
