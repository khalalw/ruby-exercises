# @param [Hash] inventory_list
def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each_pair { |key, value| puts "#{key}, quantity: #{value}" }
end

# @param [Array<Integer>] guesses
def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index { |guess, index| puts "Guess ##{index + 1} is #{guess}" }
end

# @param [Array<Integer>] numbers
def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map(&:abs)
end

# @param [Hash] inventory_list
def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select { |_key, val| val < 4 }
end

# @param [Array<Symbol>] word_list
def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  word_list.each_with_object({}) do |word, hash|
    hash[word] = word.length
  end
end
