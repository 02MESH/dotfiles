print("Hello from custom program")

local function compile() {
  print("Hello from function")  
}

return {
  compile: compile
}
