# Create a loop that prints the numbers 1 to 20.
# range = 1..20
# range.each do | value |
#     # p value
# end

# Create a loop that prints the numbers 1 to 20 using a different approach than previously used.
# num = 1
# while num <= 20
#     # p num
#     num += 1
# end

# Create a loop that prints only even numbers from 20 to 0.
# num = 20
# while num >= 0
#      p num
#     num -= 2
# end

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
# nums = [1, 2, 3, 4, 5]
# mapped = nums.map do |value|
#     value * 5
# end
# p mapped

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.
# lower_case = ["method", "array", "takes", "lowercase"]
# mapped = lower_case.map do |value|
#     value.capitalize
# end
# p mapped

# Create a method that takes in an array of numbers and returns the largest number in the array.
# nums_array = [5, 10, 20, 30]
# largest_number = 0 
# nums_array.length.times do |value|
#     if nums_array [value] > largest_number
#         largest_number = nums_array [value]
    
#     end
# end
# p largest_number

# Create a method that takes in an array of words and returns the word with the least number of characters.
# words_array = ["method", "array", "in", "characters"]
# least_charac = words_array[0]

# words_array.length.times do |value|
#     if words_array[value].length < least_charac.length
#         least_charac = words_array[value]
        
#         # p words_array[value].length
#     end
# end
# p least_charac

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
nums_array = [1, 22, 10, 45, 5]
def only_odds(array) 
    array.select do |value|
        value.odd?
    end
end

p only_odds(nums_array)
p only_odds(nums_array).sort
# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercase letters should be returned lowercased and all lowercased letters should be returned in uppercase letters.
# Create a method that will take in an array of numbers and return an array with the remainder of each number when divided by 2.
# Create a method that will take in a range of letters and return an array with all the letters capitalized.








