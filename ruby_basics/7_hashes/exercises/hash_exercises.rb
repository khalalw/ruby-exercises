# @param [String] color
#
def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  {
    color:,
    number:
  }
end

# @param [Hash] favorite_list
def favorite_color(favorite_list)
  # return the value of the color key
  favorite_list[:color]
end

# @param [Hash] favorite_list
def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  favorite_list.fetch(:number, 42)
end

# @param [Hash] favorite_list
# @param [Object] movie
def update_favorite_movie(favorite_list, movie)
  # Step 1: add/update the key of movie (as a symbol)
  favorite_list[:movie] = movie
  # Step 2: return the hash (because Step 1 returns the value of the movie key)
  favorite_list
end

# @param [Hash] favorite_list
def remove_favorite_number(favorite_list)
  # Step 1: delete the number data
  favorite_list.delete(:number)
  # Step 2: return the hash (because Step 1 returns the value of the number key)
  favorite_list
end

# @param [Hash] favorite_list
def favorite_categories(favorite_list)
  # return the keys of favorite_list
  favorite_list.keys
end

# @param [Hash] favorite_list
def favorite_items(favorite_list)
  # return the values of favorite_list
  favorite_list.values
end

# @param [Hash] original_list
# @param [Hash] additional_list
def merge_favorites(original_list, additional_list)
  # merge the two hashes: original_list and additional_list
  original_list.merge(additional_list)
end
