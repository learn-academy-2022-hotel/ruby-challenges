# Create a loop that prints the numbers 1 to 20.
range = 1..20
range.each do |value|
    p value
end
# Create a loop that prints the numbers 1 to 20 using a different approach than previously used.
range.map do |value|
    p value
end
# Create a loop that prints only even numbers from 20 to 0.
def only_evens(array)
    array.select do |value|
       value.even?
    end
 end
 
 p only_evens(0..20)
# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
array = [2, 5, 8, 11, 14, 17]
multiply = array.map do |value|
    value * 5
end

p multiply
# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.
words = ['dog', 'cat', 'bear', 'fish', 'horse']
mapped = words.map do |value|
    value.capitalize
end

p mapped
# Create a method that takes in an array of numbers and returns the largest number in the array.
# Create a method that takes in an array of words and returns the word with the least number of characters.
# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercase letters should be returned lowercased and all lowercased letters should be returned in uppercase letters.
# Create a method that will take in an array of numbers and return an array with the remainder of each number when divided by 2.
# Create a method that will take in a range of letters and return an array with all the letters capitalized.