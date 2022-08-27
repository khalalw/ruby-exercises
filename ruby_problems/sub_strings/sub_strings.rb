# Implement a method substrings that takes a word as the first arg
# and then an array of valid substrings (your dictionary) as the second arg.
# It should return a hash listing each substring (case insensitive) that was found
# in the original string and how many times it was found.
class Solution
  # @param [String] strf
  # @param [Array<String>] substrings
  def list_substrings(str, substrings)
    lowercase_str = str.downcase
    substrings.each_with_object({}) do |sub_str, hash|
      hash[sub_str] = count_substrings(lowercase_str, sub_str) if substring?(lowercase_str, sub_str)
      hash
    end
  end

  private

  # @param [String] str
  # @param [String] sub_str
  def substring?(str, sub_str)
    str.include?(sub_str)
  end

  # @param [String] str
  # @param [String] sub_str
  def count_substrings(str, sub_str)
    sub_arr = sub_str.chars
    str.each_char.each_cons(sub_str.length).count(sub_arr)
  end
end
