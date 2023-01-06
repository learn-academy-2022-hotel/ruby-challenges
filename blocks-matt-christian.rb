# Create a loop that prints the numbers 1 to 20.
num = 1
while num <= 20
    p num
    num +=1
end
# Create a loop that prints the numbers 1 to 20 using a different approach than previously used.
nums = 1..20
nums.each do |num|
    p num
end
# Create a loop that prints only even numbers from 20 to 0.
 
nums = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
nums.each do |x|
    if x % 2 == 0
        p x
    end
end

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
nums = 1..10
def mapped(array)
    array.map do |val|
        val * 5
    end
end
p mapped(nums)

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.
my_array = ["christian"]
def cap_array(array)
    array.map do |val|
        val.capitalize!
    end
end
p cap_array(my_array)
# Create a method that takes in an array of numbers and returns the largest number in the array.
numbers = [20, 15, 3, 5, 100]
def biggest_num(array)
    array.max do |val|
        val
    end
end
p biggest_num(numbers)

# Create a method that takes in an array of words and returns the word with the least number of characters.
words = ["matt", "christian"]
def low_word(array)
    array.min{|a,b| a.size <=> b.size }
end
p low_word(words)
# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
def only_odd(array)
    array.select do |val|
        val.odd?
    end
end
p only_odd(1..100)
# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercase letters should be returned lowercased and all lowercased letters should be returned in uppercase letters.
strings = ["MATT", "christian"]
def low_cap(array)
    array.map do |val|
        val.swapcase
    end
end
p low_cap(strings)
# Create a method that will take in an array of numbers and return an array with the remainder of each number when divided by 2.

# Create a method that will take in a range of letters and return an array with all the letters capitalized.
# 🏔 Stretch Goals
# FizzBuzz: Create a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.
# Create a method that takes in an array of words and returns all the words that start with a particular letter. Example: Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].
# Create a method that takes in an array of mixed data types and returns an array without any false, null, 0, or blank values.