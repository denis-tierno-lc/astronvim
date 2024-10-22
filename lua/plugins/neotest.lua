-- return {
--   {
--     "nvim-neotest/neotest",
--     lazy = true,
--     dependencies = {
--       "olimorris/neotest-rspec",
--     },
--     config = function()
--       require("neotest").setup({
--         adapters = {
--           require("neotest-rspec")
--         },
--       })
--     end
--   }
-- }
return {
  "nvim-neotest/neotest",
  dependencies = {
    "olimorris/neotest-rspec",
    "zidhuss/neotest-minitest"
  },
  opts = function(_, opts)
    if not opts.adapters then opts.adapters = {} end
   table.insert(opts.adapters, require "neotest-rspec"(require("astrocore").plugin_opts "neotest-rspec"))
   -- table.insert(opts.adapters, require "neotest-minitest"(require("astrocore").plugin_opts "neotest-minitest"))
  end,
}
