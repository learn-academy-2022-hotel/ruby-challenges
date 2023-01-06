# Challenges
# Create a loop that prints the numbers 1 to 20.

# nums = 0
# while nums < 21
#     p nums
#     nums = nums += 1
# end

# Create a loop that prints the numbers 1 to 20 using a different approach than previously used.

# (1..20).each do |value|
#     p value
# end

# Create a loop that prints only even numbers from 20 to 0.

# nums = 0..20
# evens = nums.reverse_each.map do |value|
#     if value % 2 == 0
#        p value
#     else
#         ' '
#     end
# end

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

# def num_array(array)
#     array.map do |value|
#         value * 5
#     end
# end
# p num_array([1, 3, 5, 7, 9, 11, 13])

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

# word_array = ['further', 'job', 'hermit', 'alphabet']
# lower_case = word_array.map do |value|
#     value.capitalize
# end
# p lower_case

# Create a method that takes in an array of numbers and returns the largest number in the array.

# def big_num(num_array)
#     num_array.max
# end
# p big_num([1, 2, 3, 4, 20, 50, 15])

# Create a method that takes in an array of words and returns the word with the least number of characters.

# def small_word(word_array)
#     word_array.min_by(&:length)
# end
# p small_word(['further', 'job', 'hermit', 'alphabet'])

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

# def only_odds(array)
#     array.select do |value|
#         value.odd?
#     end
# end
# p only_odds([8, 1, 12, 43, 51, 68, 7, 9]).sort

# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercase letters should be returned lowercased and all lowercased letters should be returned in uppercase letters.

# word_array = ['furtheR', 'Job', 'hermit', 'AlphaBet']
# upper_case = word_array.map do |value|
#     value.swapcase
# end
# p upper_case

# Create a method that will take in an array of numbers and return an array with the remainder of each number when divided by 2.

num_array = [2, 18, 5, 8, 9, 11, 13, 0, 12, 32]
remainder_array = num_array.map do |value|
    value % 2 
end
p remainder_array

# Create a method that will take in a range of letters and return an array with all the letters capitalized.
# 🏔 Stretch Goals
# FizzBuzz: Create a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.
# Create a method that takes in an array of words and returns all the words that start with a particular letter. Example: Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].
# Create a method that takes in an array of mixed data types and returns an array without any false, null, 0, or blank values.