# Remember that floats are fractional numbers whereas integers are whole numbers. In Ruby, 1 and 1.0 are defined by different data types with slightly different behaviors.

# Complete the following challenges in the IRB console.

# Open the IRB terminal. Exit the terminal and reopen the terminal.
# Add, subtract, multiply, and divide integers.
# Add, subtract, multiply, and divide floats.
# Find the remainder of dividing two numbers using the modulo operator (%).
# Divide an integer by 0.
# Divide a float by 0.
# Divide 0 by 0.
# Create a variable and assign an integer.
# Calculate the variable divided by 2.
# Find the remainder of the variable when divided by 3.
# Create another variable and assign it the integer 13.
# Use the relational operators on the two variables.
# Reassign the value of one variable to be 7.
# Reassign the value of one variable to be 26 times its current value.
# Complete the following challenges in a Ruby file.

# Create a variable and return it in a sentence using string interpolation.
# my_name = 'Romeo'
# p "Hello, my name is #{my_name}, how are you?"

# # Create a variable that contains a string and test some of the Ruby string methods:

# def changing_words
# greeting = 'howdy'
# greeting.upcase
    
# end
# p changing_words

# def name_check
#     pet_name = 'Lily'
#     pet_name.include?'l'
# end
# p name_check

# month = 'january'
# p month.capitalize

# snack = 'candy'
# p snack.delete 'c'

# pets = 'dog'
# p pets.index'o'

fruits = 'Apple'
p fruits.swapcase

tv_shows = ['House of Dragons', 'Bobs Burger', 'Atlanta', 'Alice in Borderland', 'The Simpsons']

p tv_shows.length
p tv_shows[0]
p tv_shows[3]
p tv_shows.reverse!

new_tv_shows = []
p new_tv_shows << tv_shows[1] << tv_shows[2]

# .upcase
# .reverse
# .include?
# .capitalize
# .delete
# .index
# .swapcase
# Create an array that contains the name of at least five TV shows you enjoy.
# Find the length of the array.
# Return the first item in the array.
# Return the fourth item in the array.
# Permanently reverse the order of the array.
# Create a new empty array for your top favorite TV shows.
# Using the full TV show array, add your top two favorite shows to the empty array.