# Build a command line calculator program that does the following:

# 1. Asks for two numbers
# 2. Asks for the type of operation to perform: add, subtract, mutliply or divide
# 3. Displays the result

# Pseudocode -- 
  # loop
    # Ask the user for 2 numbers
    # get number one and number two from the user
    # Ask the user for operation
    # if add, add #1 to #2, subtract, subtract #1 from #2, etc.
    # output result
  # end
while true 
  Kernel.puts("Please enter two numbers")
  num_one = Kernel.gets().chomp().to_i()
  num_two = Kernel.gets().chomp().to_i()
  Kernel.puts("Would you like to add, subtract, multiply, or divide the two numbers?")
  operation = Kernel.gets().chomp()
  case operation
  when "add" 
    Kernel.puts("#{num_one} + #{num_two} = #{num_one + num_two}")
  when "subtract" 
    Kernel.puts("#{num_one} - #{num_two} = #{num_one - num_two}")
  when "multiply" 
    Kernel.puts("#{num_one} * #{num_two} = #{num_one * num_two}")
  when "divide" 
    Kernel.puts("#{num_one} / #{num_two} = #{num_one / num_two}")
  else 
    Kernel.puts("You need to select add, subtract, multiply, or divide") 
  end
  break if operation.downcase == "q"
end