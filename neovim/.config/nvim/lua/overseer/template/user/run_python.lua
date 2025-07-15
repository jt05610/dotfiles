return {
  name = 'run python',
  builder = function()
    local file = vim.fn.expand '%:p'
    local filename = vim.fn.expand '%:t'
    local cmd = { file }
    if vim.bo.filetype == 'python' then
      if filename:match '_test%.py$' then
        cmd = { 'pytest', file }
      else
        cmd = { 'python3', file }
      end
    end
    return {
      cmd = cmd,
      components = {
        { 'on_output_quickfix', set_diagnostics = true },
        'on_result_diagnostics',
        'default',
      },
    }
  end,
  condition = {
    filetype = { 'python' },
  },
}
