# variable_scope_revisited.rb



# def my_value(a)
#   a = 7
# end

# a = 5
# my_value(a)
# p a

# a = 1         # first level variable

# loop do       # second level
#   b = 2

#   loop do     # third level
#     c = 3
#     puts a    # => 1
#     puts b    # => 2
#     puts c    # => 3
#     break
#   end

#   puts a      # => 1
#   puts b      # => 2
#   puts c      # => NameError
#   break
# end

# puts a        # => 1
# puts b        # => NameError
# puts c        # => NameError

n = 10

[1, 2, 3].each do |n| # variable shadowing, n becomes a new variable
  puts n
end

puts n

USERNAME = "Batman"

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate

loop do
  MY_TEAM = "Denver Nuggets"
  break
end

puts MY_TEAM