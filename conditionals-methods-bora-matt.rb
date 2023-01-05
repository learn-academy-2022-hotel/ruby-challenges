# Challenges
# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

def sum_these_numbers(num1, num2)
    p num1 + num2
end
sum_these_numbers(10, 5)

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

def is_even num
    p num % 2 == 0
end
is_even(1)

# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

def is_valid num
    if num.between?(1, 10)
        p 'valid'
    else
        p 'invalid'
    end
end    
is_valid(11)

# Create a method that takes in a string and determines if the string is a palindrome.

def is_palindrome word
    p word == word.reverse
end

is_palindrome('madam')

# ✂️ Challenge: Rock, Paper, Scissors
# As the first user, I can see a prompt in the terminal to enter my name.

p 'Player one, enter your name'
player_one = gets.chomp
p player_one

# As the second user, I can see a prompt in the terminal to enter my name.

p 'Player two, enter your name'
player_two = gets.chomp
p player_two

# As the first user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

p 'Choose one: Rock, paper, or scissors'
rps_one = gets.chomp
p rps_one

# As the second user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

p 'Choose one: Rock, paper, or scissors'
rps_two = gets.chomp
p rps_two

# As a user, I can see a message in the terminal depicting which user won the round.

def rps_winner(rps_one, rps_two)
    conditions = {
        'rock' => 'scissors',
        'paper' => 'rock',
        'scissors' => 'paper'
    }
    if conditions [rps_one] == rps_two
        p 'Player one wins!'

    end
end

# As a user, I can see a message in the terminal noting if there was a tie.
# ✅ Challenge: Password Checker
# As a developer, you have been tasked with creating the user registration for a secure web site. To test your code, enter the user ID and password in the terminal to find out if they are acceptable. The user ID and password must adhere to the to following criteria:

# User ID and password cannot be the same.
# User ID and password must be at least six characters long.
# Password must contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".
# User password must contain at least one number