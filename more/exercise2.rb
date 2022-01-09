def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

=begin
The program will put nothing to the screen because it's missing the call method
=end
