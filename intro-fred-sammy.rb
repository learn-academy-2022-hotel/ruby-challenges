# Complete the following challenges in a Ruby file.

# Create a variable and return it in a sentence using string interpolation.

my_name = 'Fred'
p "My name is #{my_name}"

# Create a variable that contains a string and test some of the Ruby string methods:

# .upcase

p my_name.upcase

# .reverse

p my_name.reverse

# .include?

p my_name.include?('f')

# .capitalize

p my_name.capitalize

# .delete

p my_name.delete('r')

# .index

p my_name.index('F')

# .swapcase
 
p my_name.swapcase

# Create an array that contains the name of at least five TV shows you enjoy.

my_fav_tv_shows = ['MASH', 'MacGyver', 'Bones', 'Dexter', 'Family Ties']

# Find the length of the array.

p my_fav_tv_shows.length

# Return the first item in the array.

p my_fav_tv_shows.first

# Return the fourth item in the array.

p my_fav_tv_shows[3]

# Permanently reverse the order of the array.

p my_fav_tv_shows = my_fav_tv_shows.reverse
p my_fav_tv_shows

# Create a new empty array for your top favorite TV shows.

my_top_tv_shows = []
p my_top_tv_shows

# Using the full TV show array, add your top two favorite shows to the empty array.

p my_top_tv_shows.push('MacGyver', 'Family Ties')