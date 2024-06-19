local M = {}

local function compile_and_run()
  --Get the full path of the current file
  local file_path = vim.fn.expand('%:p')
  local file_name = vim.fn.expand('%:t:r')
  local output = '/tmp/' .. file_name

  -- Compile command with C++17 standard
  local compile_cmd = 'g++ -std=c++17 ' .. file_path .. ' -o ' .. output

  -- Notify the user about the compilation
  print("Compiling " .. file_path .. " with C++17 standard..")

    -- Execute the compile command
  local compile_result = vim.fn.system(compile_cmd)

  -- Check if compilation was successful
  if vim.v.shell_error == 0 then
    -- Compilation succeeded, run the program in a new terminal split
    print("Running " .. output .. " in a new pane...")
    vim.cmd('belowright split | terminal ' .. output)
  else
    -- Compilation failed, print the error message
    print("Compilation failed:\n" .. compile_result)
  end
end


M.compile_and_run = compile_and_run
-- Createa  user command for CompileAndRun
vim.keymap.set(
  'n',
  '<leader>cpp',
  M.compile_and_run,
  {}
)

return M
