# Challenges

# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

# def sum_these_numbers(num1, num2)
#     p (num1 + num2)
# end

# sum_these_numbers(4, 8)
# # output: 12

# # Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

# def is_even(num1)
#     if (num1 % 2 == 0)
#         p 'True'
#     else p 'False'    
#     end    
# end

# is_even(7)
# # output: False
# is_even(12)
# # output: True

# # Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

# def num_valid(num1)
#     if(num1 >= 1 && num1 <= 10)
#         p 'Valid'
#     else p 'Invalid'
#     end
# end

# num_valid(6)
# # output: True
# num_valid(0)
# # output: False
# num_valid(10.1)
# # output: False
# num_valid(0.001)
# # output: False

# # Create a method that takes in a string and determines if the string is a palindrome.

# def palindrome(word1)
#     if word1.upcase == word1.upcase.reverse
#         p "#{word1} is a palindrome."
#     else p "#{word1} is not a palindrome"
#     end
# end

# palindrome('tenet')
# # output: "tenet is a palindrome"
# palindrome('Tenet')
# # output: "Tenet is a palindrome"
# palindrome('Sassafrass')
# # output: "Sassafrass is not a palindrome"
# palindrome('EvE')
# # output: "EvE is a palindrome"



# ✂️ Challenge: Rock, Paper, Scissors
# As the first user, I can see a prompt in the terminal to enter my name.

p "Please enter your name:"
first_user = gets.chomp

# As the second user, I can see a prompt in the terminal to enter my name.

p "Please enter your name:"
second_user = gets.chomp


# As the first user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

p "Please enter your choice of rock, paper, or scissors"
user1_input = gets.chomp

# As the second user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

p "Please enter your choice of rock, paper, or scissors"
user2_input = gets.chomp

# As a user, I can see a message in the terminal depicting which user won the round.
# rock beats scissors, paper beats rock, scissors beats paper


def winner(user1, user2, user1_input, user2_input)
    if (user1_input == 'rock' && user2_input == 'paper')
        p "#{user2} beats #{user1}."
    end
end

winner(first_user, second_user, user1_input, user2_input)

# As a user, I can see a message in the terminal noting if there was a tie.




# ✅ Challenge: Password Checker
# As a developer, you have been tasked with creating the user registration for a secure web site. To test your code, enter the user ID and password in the terminal to find out if they are acceptable. The user ID and password must adhere to the to following criteria:

# User ID and password cannot be the same.
# User ID and password must be at least six characters long.
# Password must contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".
# User password must contain at least one number.