# ❤️ Challenges
# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
# def sum_these_numbers (integer1, integer2)
#     p integer1 + integer2
# end
# sum_these_numbers(8,3)
# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
# def is_even (integer)
#     if integer % 2 == 0
#         p true
#     elsif integer % 2 == 1
#         p false
#     end 
# end
# is_even(7)
# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
# def valid_number(number)
#     if number >= 1 && number <= 10
#         p 'Valid'
#     else
#         p 'Invalid'
#     end
# end
# valid_number(4.7)

# Create a method that takes in a string and determines if the string is a palindrome.
# def palindrome(string)
#     if string == string.reverse 
#         p 'Is a palindrome'
#     else
#         p 'Is not a palindrome'
#     end
# end 
# palindrome('racecar')

# ✂️ Challenge: Rock, Paper, Scissors
# As the first user, I can see a prompt in the terminal to enter my name.
p 'Player 1, please enter your name'
first_name = gets.chomp

# As the second user, I can see a prompt in the terminal to enter my name.
p 'Player 2, please enter your name'
second_name=gets.chomp

# As the first user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
p "#{first_name}, rock, paper, or scissors?"
firstplayer_action=gets.chomp

# As the second user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
p "#{second_name}, rock, paper, or scissors?"
secondplayer_action=gets.chomp

# As a user, I can see a message in the terminal depicting which user won the round.
def winner(firstplayer_action, secondplayer_action)
    if firstplayer_action == 'rock' && secondplayer_action == 'scissors'
        p "#{second_name} is the winner"
    elsif firstplayer_action == 'paper' && secondplayer_action == 'rock'
        p "#{first_name} is the winner"
    end
end
p winner(firstplayer_action, secondplayer_action)

# As a user, I can see a message in the terminal noting if there was a tie.
# ✅ Challenge: Password Checker
# As a developer, you have been tasked with creating the user registration for a secure web site. To test your code, enter the user ID and password in the terminal to find out if they are acceptable. The user ID and password must adhere to the to following criteria:

# User ID and password cannot be the same.
# User ID and password must be at least six characters long.
# Password must contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".
# User password must contain at least one number.
