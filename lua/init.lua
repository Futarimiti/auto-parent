local M = {}

M.setup = function (_)
  vim.cmd [[
    au BufWritePre,FileWritePre * if @% !~# '\(://\)' | call mkdir(expand('<afile>:p:h'), 'p') | endif
  ]]
end

return M
