local M = {}

M.comment = function()
  local present, nvim_comment = pcall(require, "nvim_comment")
  if present then
    nvim_comment.setup()
  end
end

M.registers  = function()
  local present, _ = pcall(require, "registers")
  if present then
    vim.g["registers_window_max_width"] = 30
  end
end

return M
