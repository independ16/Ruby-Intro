def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#error is because the execute method is missing the & in the argument