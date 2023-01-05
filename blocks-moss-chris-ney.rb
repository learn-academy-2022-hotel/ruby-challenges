# Create a loop that prints the numbers 1 to 20.

# nums = 1..20
    # nums.each do |val|
    #     p val
    # end

    # nums.each{|val| p val}

# Create a loop that prints the numbers 1 to 20 using a different approach than previously used.

    # nums.map do |val|
    #     p val
    # end

# Create a loop that prints only even numbers from 20 to 0.
# nums = 0..20
    # new_nums = nums.reverse_each
    #     new_nums.map do |value|
    #         if value.even?
    #             p value
    #         else

    #         end
    #     end

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
    # def array_times_five(array)
    #     array.map do |value|
    #         value * 5
    #     end
    # end
    # p array_times_five([1, 2, 3, 4, 5])


# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.
    # def words_array(array)
    #     array.map do |words|
    #         words.capitalize!
    #     end
    # end
    # p words_array(['cat', 'dog', 'nice', 'fish'])

# Create a method that takes in an array of numbers and returns the largest number in the array.
    # def biggest_number(array)
    #     array.max() 
    # end
    # p biggest_number([18, 47, 12, 2, 37])

# Create a method that takes in an array of words and returns the word with the least number of characters.
    # def words_array(array)
    #     array.min{|a,b| a.size <=> b.size }
    # end
    # p words_array(['slope', 'dog', 'creature', 'zebra'])
    # output: 'dog'

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
    # def only_odds(array)
    #     new_array = array.select do |value|
    #         value.odd?
    #     end
    #     new_array.sort{|a,b| a <=> b}
    # end
    # p only_odds([12, 17, 31, 4, 9, 23])
    # output: [9, 17, 23, 31]

# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercase letters should be returned lowercased and all lowercased letters should be returned in uppercase letters.
    # def reverse_casing(array)
    #     array.map do |value|
    #         value.swapcase
    #     end
    # end
    # p reverse_casing(['Slice', 'sWAP', 'Ham', 'bELLs'])
    # output: ["sLICE", "Swap", "hAM", "BellS"]

# Create a method that will take in an array of numbers and return an array with the remainder of each number when divided by 2.
    # def remainder_array(array)
    #     array.map do |value|
    #         value % 2
    #     end
    # end
    # p remainder_array([7, 12, 13, 5])
    # output: [1, 0, 1, 1]

# Create a method that will take in a range of letters and return an array with all the letters capitalized.
range = 'a'..'q'
    def capitalized(letters)
        letters.each do |value|
            value.upcase 
        end
    end
