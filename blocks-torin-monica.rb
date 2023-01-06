# ❤️ Challenges

# Create a loop that prints the numbers 1 to 20.
        loop = 1
        while loop <= 20
            p loop
            loop += 1 
        end
    # output: 
    # 1
    # 2
    # 3
    # 4
    # 5
    # 6
    # 7
    # 8
    # 9
    # 10
    # 11
    # 12
    # 13
    # 14
    # 15
    # 16
    # 17
    # 18
    # 19
    # 20
    
# Create a loop that prints the numbers 1 to 20 using a different approach than previously used.

        num = 1..20
        num.each do |val|
            p val
        end
    # output:
    # 1
    # 2
    # 3
    # 4
    # 5
    # 6
    # 7
    # 8
    # 9
    # 10
    # 11
    # 12
    # 13
    # 14
    # 15
    # 16
    # 17
    # 18
    # 19
    # 20

# Create a loop that prints only even numbers from 20 to 0.
    
    num = (0..20).to_a.reverse
    # p num
        num.map do |value|
            if value % 2 == 0
            p value
            end
        end

    # output:
    # 20
    # 18
    # 16
    # 14
    # 12
    # 10
    # 8
    # 6
    # 4
    # 2
    # 0

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

    random_arr = [2, 4, 5, 7, 8]

        def new_arr array
            array.map do |number|
                number * 5
            end
        end
    p new_arr(random_arr)
        # output: [10, 20, 25, 35, 40]

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

    # .capitalize!
    words = ['lunch', 'sleep', 'array', 'plant', 'mats']

    # p words.capitalize!

        def cap_words arr
            arr.map do |each|
                each.capitalize!
            end
        end
    p cap_words(words)
    p words

        # output: ["Lunch", "Sleep", "Array", "Plant", "Mats"]

# Create a method that takes in an array of numbers and returns the largest number in the array.
    number = [11, 64, 5, 6, 34, 25, 67]
    # .max find the largest value

    # p number.max()

        def largest_number array
            array.max()
        end

    p largest_number(number)

    # output: 67

# Create a method that takes in an array of words and returns the word with the least number of characters.

    small_words = ['pencil', 'phone', 'sock', 'hairspray', 'go']

        def smallest_word array
            array.min()
        end
        
    p smallest_word(small_words)
    # output: "go"

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercase letters should be returned lowercased and all lowercased letters should be returned in uppercase letters.

# Create a method that will take in an array of numbers and return an array with the remainder of each number when divided by 2.

# Create a method that will take in a range of letters and return an array with all the letters capitalized.


# 🏔 Stretch Goals
# FizzBuzz: Create a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.
# Create a method that takes in an array of words and returns all the words that start with a particular letter. Example: Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].
# Create a method that takes in an array of mixed data types and returns an array without any false, null, 0, or blank values.