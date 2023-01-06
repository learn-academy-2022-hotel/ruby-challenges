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

# titleize

# Create an array that contains the name of at least five TV shows you enjoy.
enjoyable_shows = ['GOT', 'KOTH', 'WLIIA', 'The Office', 'Broad City']
# Find the length of the array.
p enjoyable_shows.length
# Return the first item in the array.
p enjoyable_shows.first
# Return the fourth item in the array.
p enjoyable_shows[3]
# Permanently reverse the order of the array.
enjoyable_shows.reverse!
p enjoyable_shows
# Create a new empty array for your top favorite TV shows.
top_shows = []
# Using the full TV show array, add your top two favorite shows to the empty array.
top_shows<<enjoyable_shows[0]<<enjoyable_shows[3]
p top_shows 


# # curiosities
# top_shows<<enjoyable_shows.first<<enjoyable_shows.last
# # top_shows<<enjoyable_shows[0, 1] # [["Broad City"]]
# # p enjoyable_shows[0, 2] #["Broad City", "The Office"]
# # top_shows<<enjoyable_shows[0, 2] # [["Broad City"]]
# p enjoyable_shows.append('another show') #["Broad City", "The Office", "WLIIA", "KOTH", "GOT", "another show"]
# p enjoyable_shows.insert(2, 'yet another show') #["Broad City", "The Office", "yet another show", "WLIIA", "KOTH", "GOT", "another show"]
# p enjoyable_shows.insert(3, '7').insert(4, '12')


nums = 1..5
nums.map do |val|
val
end