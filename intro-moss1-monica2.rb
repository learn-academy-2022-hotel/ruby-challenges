# ❤️ Challenges
# Remember that floats are fractional numbers whereas integers are whole numbers. In Ruby, 1 and 1.0 are defined by different data types with slightly different behaviors.

# Complete the following challenges in the IRB console.
# Open the IRB terminal. Exit the terminal and reopen the terminal.
# Add, subtract, multiply, and divide integers.
    # 3.0.0 :001 > 0 + 2
    # => 2 
    # 3.0.0 :002 > 1 - 2
    # => -1 
    # 3.0.0 :003 > 2 * 2
    # => 4 
    # 3.0.0 :004 > 2 % 2
    # => 0 

# Add, subtract, multiply, and divide floats.
    # 3.0.0 :008 > 2 + 2.2
    # => 4.2 
    # 3.0.0 :009 > 3.3 - 2
    # => 1.2999999999999998 
    # 3.0.0 :010 > 3.5 * 3.5
    # => 12.25 
    # 3.0.0 :011 > 6/2.5
    # => 2.4 

# Find the remainder of dividing two numbers using the modulo operator (%). 
    # 3.0.0 :012 > 7 % 2
    # => 1 

# Divide an integer by 0.
    # 3.0.0 :013 > 6/0
    # (irb):13:in `/': divided by 0 (ZeroDivisionError)
    # from (irb):13:in `<main>'                                    
    # from /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/irb-1.4.2/exe/irb:11:in `<top (required)>'                                                
    # from /Users/learnacademy/.rvm/gems/ruby-3.0.0/bin/irb:23:in `load'
    # from /Users/learnacademy/.rvm/gems/ruby-3.0.0/bin/irb:23:in `<main>'

# Divide a float by 0.
    # 3.0.0 :015 > 5.5 / 0
    # => Infinity 

# Divide 0 by 0.
    # 3.0.0 :016 > 0 / 0
    # (irb):16:in `/': divided by 0 (ZeroDivisionError)

# Create a variable and assign an integer.
    # 3.0.0 :017 > number = 4
    # => 4 
    # 3.0.0 :018 > number
    # => 4 

# Calculate the variable divided by 2.
    # 3.0.0 :019 > number / 2
    # => 2 

# Find the remainder of the variable when divided by 3.
    # 3.0.0 :020 > number % 3
    # => 1 

# Create another variable and assign it the integer 13.
    # 3.0.0 :021 > next_number = 13
    # => 13 
    # 3.0.0 :022 > next_number
    # => 13 

# Use the relational operators on the two variables.
    # 3.0.0 :023 > number < next_number
    # => true 

# Reassign the value of one variable to be 7.
    # 3.0.0 :024 > number = 7
    # => 7 
    # 3.0.0 :025 > number
    # => 7 

# Reassign the value of one variable to be 26 times its current value.
    # 3.0.0 :026 > next_number = next_number * 26
    # => 338 
    # 3.0.0 :027 > next_number
    # => 338 

# Complete the following challenges in a Ruby file.
    
# Create a variable and return it in a sentence using string interpolation. 

    # my_name = 'Moss'
    # p "My name is #{my_name}"

    # "My name is Moss"

# Create a variable that contains a string and test some of the Ruby string methods:
    # my_name = 'moss'

#  p my_name.upcase
    # "MOSS"
#  p my_name.reverse
    # "ssom"
#  p my_name.include?('o')
    # true
#  p my_name.capitalize
    # "Moss"
#  p my_name.delete('s')
    # "mo"(
#  p my_name.index('m')
    # 0
#  p my_name.swapcase
    # "MOSS"

# Create an array that contains the name of at least five TV shows you enjoy.
    tv_shows = ['The Magicians', 'Wednesday', 'The Circle', 'Love Island', 'The Mole']

# Find the length of the array.
    p tv_shows.length
        # 5

# Return the first item in the array.
    p tv_shows.first
        # "The Magicians"

# Return the fourth item in the array.
    p tv_shows[3]
        # "Love Island"

# Permanently reverse the order of the array.
    p tv_shows.reverse!
    p tv_shows
    # ["The Mole", "Love Island", "The Circle", "Wednesday", "The Magicians"]

# Create a new empty array for your top favorite TV shows.
    favorite_shows = []

# Using the full TV show array, add your top two favorite shows to the empty array.
    favorite_shows << tv_shows[3] << tv_shows[4]
    p favorite_shows
    # ["Wednesday", "The Magicians"]