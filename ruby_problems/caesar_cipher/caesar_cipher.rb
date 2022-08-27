# Implement a caesar cipher that takes in a string and the
# shift factor and then outputs the modified string

# @param [String] initial_string
# @param [Integer] num_of_shifts
def caesar_cipher(initial_string, num_of_shifts)
  initial_string.split('').reduce('') do |final_str, curr|
    if letter?(curr)
      shifted_ord = get_shifted_ord(curr, curr.ord + num_of_shifts)
      final_str + shifted_ord.chr
    else
      final_str + curr
    end
  end
end

# @param [String] original_char
# @param [Integer] shifted_ord
def get_shifted_ord(original_char, shifted_ord)
  lowercase_range = (97..122)
  uppercase_range = (65..90)

  range_to_use = lowercase?(original_char) ? lowercase_range : uppercase_range
  shifted_ord -= 26 unless range_to_use.include?(shifted_ord)
  shifted_ord
end

# @param [String] char
def letter?(char)
  char.match(/[[:alpha:]]/)
end

# @param [String] char
def lowercase?(char)
  char.downcase == char
end
