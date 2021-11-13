local present1, autopairs = pcall(require, "nvim-autopairs")
-- local present2, autopairs_completion = pcall(require, "nvim-autopairs.completion.compe")

if not (present1) then
   return
end

autopairs.setup({
  map_cr = true
})
-- autopairs.setup()
-- autopairs_completion.setup {
--    map_cr = true,
--    map_complete = true, -- insert () func completion
-- }
