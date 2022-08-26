# frozen_string_literal: true

# @param [Array<String>] drink_list
def coffee_drink?(drink_list)
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
  drink_list.include?("coffee") || drink_list.include?("espresso")
end

# @param [Array<Integer>] guess_list
# @param [Integer] answer
def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
  guess_list.any?(answer)
end

# @param [Array<Integer>] year_list
def twenty_first_century_years?(year_list)
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
  year_list.all? { |year| year.between?(2001, 2100) }
end

# @param [Array<String>] word_list
def correct_format?(word_list)
  # use #none? to return true when none of the words in the word_list (array) are in upcase
  word_list.none? { |word| word.upcase == word }
end

# @param [Hash] score_list
# @param [Integer] perfect_score
def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
  score_list.values.one? { |score| score == perfect_score }
end
