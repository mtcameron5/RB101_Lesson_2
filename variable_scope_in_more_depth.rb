# variable_scope_in_more_depth.rb


# Block is not executed
def greetings
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# Outputs 'Goodbye'

# block executed
def greetings
  yield
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# Outputs 'Hello'
# Outputs 'Goodbye'

