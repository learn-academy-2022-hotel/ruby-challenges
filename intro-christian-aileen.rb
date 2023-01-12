# Challenges
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
################# Completed ###########################################

# Complete the following challenges in a Ruby file.

# Create a variable and return it in a sentence using string interpolation.
animial = 'dog'

p "the #{animial} is cute!"
# Create a variable that contains a string and test some of the Ruby string methods:
# .upcase
p animial.upcase
# .reverse
p animial.reverse
# .include?
p animial.include? 'dog'
# .capitalize
p animial.capitalize
# .delete
p animial.delete 'o'
# .index
p animial.index  'd'
# .swapcase
p animial.swapcase
# Create an array that contains the name of at least five TV shows you enjoy.
p tvshows = ['star trek', 'rick and morty', 'inside job', 'date line', 'too hot to handle']
# Find the length of the array.
p tvshows.length
# Return the first item in the array.
p tvshows.first
# Return the fourth item in the array.
p tvshows[3]
# Permanently reverse the order of the array.
p tvshows = tvshows.reverse
# Create a new empty array for your top favorite TV shows.
emptytv = []
# Using the full TV show array, add your top two favorite shows to the empty array.
emptytv << tvshows[3, 2]
p emptytv





my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each do |x|
  if x % 2 == 0
    p x
  end
end
