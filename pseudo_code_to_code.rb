# Get largest number from a collection (in this instance, an array)

# Pseudo-Code -- 
  # SET iterator = 0
  # SET saved_number = value within numbers collection at space 1

  # WHILE iterator <= length of numbers
  #   SET current_number = value within numbers collection at space “iterator”
  #   IF saved_number >= current_number
  #     go to the next iteration
  #   ELSE
  #     saved_number = current_number
  #   iterator = iterator + 1
  # print saved_number
  # end

numbers = [5, 3, 11, nil, 3, 15, 25, 38, 43]

def find_greatest(numbers)
  return if numbers.nil?
  saved_number = numbers[0] 

  numbers.each do |num|
    if num.nil? || saved_number >= num 
      next 
    else 
      saved_number = num
    end
  end
  return saved_number
end

p find_greatest(numbers)


# a method that returns the sum of two integers
# Pseudo-code
  # START
    # READ two integers into method
    # RETURN one integer + the other integer
  # END

# a method that takes an array of strings, and returns a string that is all those strings concatenated together
  # Pseudo-code
  # START
    # SET iterator = 0
    # SET concatString = ""
    # WHILE iterator < length of arrayString
      # concatString = concatString + RETRIEVE arrayString[iterator]
      # iterator = iterator + 1
    # return concatString

# a method that takes an array of integers, and returns a new array with every other element
  # Pseudo-code
  # START
    # SET new_array = []
    # iterator = 0
    # WHILE iterator < lengthOfOldArray
      # new_array[iterator] = oldArray[iterator]
      # iterator = iterator + 1
    # return new_array
