-- NOTE: C++ compile script

local M = {}

local function compile_and_run()
  -- Get the full path of the current file
  local file_path = vim.fn.expand('%:p')
  local file_name = vim.fn.expand('%:t:r')
  local output = '/tmp/c++/' .. file_name

  -- Compile command with C++17 standard
  local compile_cmd = 'g++ -std=c++17 ' .. file_path .. ' -o ' .. output

  -- Notify the user about the compilation
  print("Compiling " .. file_path .. " with C++17 standard..")

  -- Execute the compile command and capture the output
  local compile_result = vim.fn.systemlist(compile_cmd)

  -- Check if compilation was successful
  if vim.v.shell_error == 0 then
    -- Compilation succeeded, run the program in a new terminal split
    print("Running " .. output .. " in a new pane...")
    -- Open a new terminal split and run the program
    vim.cmd('belowright split | terminal ' .. output)
    -- Switch to terminal mode to allow input
    vim.cmd('startinsert')
  else
    -- Compilation failed, open a new buffer to show the errors
    vim.cmd('belowright split')
    local bufnr = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, compile_result)
    vim.api.nvim_set_current_buf(bufnr)
    print("Compilation failed. See the split window for details.")
  end
end

M.compile_and_run = compile_and_run

-- Create a user command for CompileAndRun
vim.keymap.set(
  'n',
  '<leader>cpp',
  M.compile_and_run,
  { desc = "Run C++ Program" }
)

return M
