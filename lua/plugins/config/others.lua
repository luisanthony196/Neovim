local M = {}

M.comment = function()
  local present, nvim_comment = pcall(require, "nvim_comment")
  if present then
    nvim_comment.setup()
  end
end

M.registers = function()
  local present, _ = pcall(require, "registers")
  if present then
    vim.g["registers_window_max_width"] = 30
  end
end

M.tmux = function ()
  local present, tmux = pcall(require, "tmux")
  if present then
    tmux.setup {
      navigation = {enable_default_keybindings = true},
      resize = {enable_default_keybindings = true}
    }
  end
end

return M
