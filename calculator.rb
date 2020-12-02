# Build a command line calculator program that does the following:

# 1. Asks for two numbers
# 2. Asks for the type of operation to perform: add, subtract, mutliply
#  or divide
# 3. Displays the result

# Pseudocode --
  # loop
  # Ask the user for 2 numbers
  # get number one and number two from the user
  # Ask the user for operation
  # if add, add #1 to #2, subtract, subtract #1 from #2, etc.
  # output result
# end

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
puts MESSAGES.inspect

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(number)
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == number
end 

def get_number(which_number)
  number = nil
  Kernel.loop do
    prompt("What's the #{which_number} number?")
    number = Kernel.gets().chomp()

    if integer?(number) || float?(number)
      break
    else
      prompt(MESSAGES["invalid_number"])
    end
  end
  number
end

prompt(MESSAGES["welcome"])

name = ""
Kernel.loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES["valid_name"])
  else
    break
  end
end

prompt("Hi #{name}")

Kernel.loop do
  num_one = get_number("first")
  num_two = get_number("second")


  prompt(MESSAGES["operator_prompt"])
  operator = ""
  Kernel.loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES["operator_prompt_error_message"])
    end
  end

  case operator
  when "1"
    if float?(num_one) || float?(num_two)
      solution = num_one.to_f + num_two.to_f 
    else 
      solution = num_one.to_i + num_two.to_i 
    end
    Kernel.puts("#{num_one} + #{num_two} = #{solution}")
  when "2"
    if float?(num_one) || float?(num_two)
      solution = num_one.to_f - num_two.to_f 
    else 
      solution = num_one.to_i - num_two.to_i 
    end
    Kernel.puts("#{num_one} - #{num_two} = #{solution}")
  when "3"
    if float?(num_one) || float?(num_two)
      solution = num_one.to_f * num_two.to_f 
    else 
      solution = num_one.to_i * num_two.to_i 
    end
    Kernel.puts("#{num_one} * #{num_two} = #{solution}")
  when "4"
    if float?(num_one) || float?(num_two)
      solution = num_one.to_f / num_two.to_f 
    else 
      solution = num_one.to_i / num_two.to_i 
    end
    Kernel.puts("#{num_one} / #{num_two} = #{solution}")
  end

  prompt(MESSAGES["ask_to_go_again"])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES["goodbye"])
