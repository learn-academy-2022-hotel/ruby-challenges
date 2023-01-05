# Create a loop that prints the numbers 1 to 20.
range = 1..20
range.each do |num|
  p num
end  

# Create a loop that prints the numbers 1 to 20 using a different approach than previously used.
number = 1
while number <= 20
  p number
  number += 1
end 

# Create a loop that prints only even numbers from 20 to 0.
def only_evens (array)
  array.select do |value|
    value.even?
  end
end

p only_evens (1..20)


# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

nums = [2, 6, 7 ,1]
  maps = nums.map do |value|
    value * 5
  end
  p maps


# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

words = ['monkeys', 'cats', 'birds', 'snakes']

mapped = words.map do |word|
  word.swapcase!
end

p mapped
# Create a method that takes in an array of numbers and returns the largest number in the array.

array = [5,78,23,16]
def largest_number (array)
  array.sort.last do |value|
    value
  end
end

p largest_number(array)

# Create a method that takes in an array of words and returns the word with the least number of characters.

newArray = ['tree', 'flowers', 'sticks']
def shortest_word (array)
  array.sort.last do |value|
    value
  end
end

p shortest_word (newArray)


# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

array2 = [2,5,1,9,6]

def only_odds (array)
  array.sort.select do |value|
    value.odd?
  end
end

p only_odds(array2)
# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercase letters should be returned lowercased and all lowercased letters should be returned in uppercase letters.

newArray3 = ["green", "blUe", "YELLOW"]

def reverse_casing (array)
  array.map do |value|
    value.swapcase
  end
end

p reverse_casing (newArray3)
# Create a method that will take in an array of numbers and return an array with the remainder of each number when divided by 2.

array1000 = [76,34,19,81]
def remainder (array)
  array.map do |value|
    value % 2
  end
end

p remainder (array1000)

# Create a method that will take in a range of letters and return an array with all the letters capitalized.

range = ('m'..'r')

def capitalized (range)
  range.to_a.map do |value|
  value.upcase 
  end
end

p capitalized(range)