# ❤️ Challenges

# Create a loop that prints the numbers 1 to 20.

# num = 1

# while num <= 20
#     p num
#     num += 1
# end

heres a little test

# Create a loop that prints the numbers 1 to 20 using a different approach than previously used.

# range = 1..20
# range.each do |num|
#     p num
# end

# Create a loop that prints only even numbers from 20 to 0.

# range = 0..20

# even_num = range.select do |num|
#     num.even?
# end

# p even_num.reverse
# Output is an array of even numbers in descending order

# num = 20

# while num >= 0
#     if num % 2 == 0
#         p num
#     end
#     num -= 1 # subtract from 20
# end

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

# num_array = 1..10

# array_5 = num_array.map do | value |
#     value * 5
# end

# p array_5

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

# word_array = ['lea', 'bora', 'sammy']

# def word_to_caps(array)
#     array.map! do |word|
#         word.upcase
#     end
# end

# p word_to_caps(word_array)

# Create a method that takes in an array of numbers and returns the largest number in the array.

# num_array = [1, 7, 5, 20, 9, 2, 100, -1]

# def largest_num(array)
#    p array.max
# end

# largest_num(num_array)

# Create a method that takes in an array of words and returns the word with the least number of characters.

# word_array = ['sammy', 'bora', 'lea', 'sam', 'bo', 'leah']

# def small_word(array)
#     array.min{|a,b| a.size <=> b.size}
# end

# p small_word(word_array)

# reflection: not sure how method works, found source online

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

num_array = [2000, 1992, 22, 30, 2023, 1, 7]

def odd_least_greatest(array)
    if num % 2 == 1
        p num
    end
    array.sort
end  

p odd_least_greatest(num_array)

# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercase letters should be returned lowercased and all lowercased letters should be returned in uppercase letters.
# Create a method that will take in an array of numbers and return an array with the remainder of each number when divided by 2.
# Create a method that will take in a range of letters and return an array with all the letters capitalized.