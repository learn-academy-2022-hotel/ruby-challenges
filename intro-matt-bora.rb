# Create a variable and return it in a sentence using string interpolation.
# my_name = 'bora'
# p "#{my_name} likes to dance"
# my_name

# Create a variable that contains a string and test some of the Ruby string methods:
your_name = 'bora'
# .upcase 
p your_name.upcase
# .reverse
p your_name.reverse

# .include?
p your_name.include?('b')
# .capitalize
p your_name.capitalize
# .delete
p your_name.delete('ba')
# .index
p your_name.index('a')
# .swapcase
p your_name.swapcase
# Create an array that contains the name of at least five TV shows you enjoy.
tv_shows = ['Family Guy', 'House of the Dragon', 'Mob Psycho 100', 'My Hero Academia', 'Demon Slayer']
# Find the length of the array.
p tv_shows.length
# Return the first item in the array.
p tv_shows.first
# Return the fourth item in the array.
p tv_shows[3]
# Permanently reverse the order of the array.
p tv_shows.reverse!
p tv_shows
# Create a new empty array for your top favorite TV shows.
fav_tvshows = []
# Using the full TV show array, add your top two favorite shows to the empty array.
fav_tvshows << ['My Hero Academia', 'Demon Slayer']
p fav_tvshows