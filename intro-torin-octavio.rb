# Create a variable and return it in a sentence using string interpolation.
favorite_food = 'bib bim bop'
p "#{favorite_food} is my favorite food"
#output: "bib bim bop is my favorite food"
puts "#{favorite_food} is my favorite food"
#output: bib bim bop is my favorite food
# Complete the following challenges in a Ruby file.

# Create a variable that contains a string and test some of the Ruby string methods:
ruby_language = 'good stuff'
# .upcase
p ruby_language.upcase
# output: "GOOD STUFF"

# .reverse
p ruby_language.reverse
# output: "ffuts doog"

# .include?
p ruby_language.include?'o'
# output: true

# .capitalize
p ruby_language.capitalize
# output: "Good stuff"

# .delete
p ruby_language.delete'o'
# output: "gd stuff"

# .index
p ruby_language.index'd'
# output: 3
p ruby_language.index'z'
# output: nil

# .swapcase
p ruby_language.swapcase
# "GOOD STUFF"
p ruby_language.capitalize.swapcase
# "gOOD STUFF"
# Create an array that contains the name of at least five TV shows you enjoy.
# Find the length of the array.
# Return the first item in the array.
# Return the fourth item in the array.
# Permanently reverse the order of the array.
# Create a new empty array for your top favorite TV shows.
# Using the full TV show array, add your top two favorite shows to the empty array.
