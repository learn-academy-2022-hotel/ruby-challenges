# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_these_numbers(num1, num2)
    num1 + num2
end
p sum_these_numbers(1, 5)

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

def is_even(integer)
    if integer % 2 == 0 
        'True'
    else 
        'False'
    end
end
p is_even(8)     
p is_even(7)

# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

def validity_test(num)
    if num > 0 && num < 11
        'Valid'
    else 
        'Invalid'
    end
end
p validity_test(5)
p validity_test(11)

# Create a method that takes in a string and determines if the string is a palindrome.

def string(word)
    if word.reverse == word
        "#{word} is a palindrome"
    else
        "#{word} is not a palindrome"
    end
end
p string('racecar')
p string('cheese')

# ✂️ Challenge: Rock, Paper, Scissors

# As the first user, I can see a prompt in the terminal to enter my name.

def game_logic
    puts 'Player 1, enter your name'
    name1 = gets


    # As the second user, I can see a prompt in the terminal to enter my name.

    puts 'Player 2, enter your name'
    name2 = gets

    # As the first user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
    move_array = ['Rock', 'Paper', 'Scissors']
    puts 'Player 1: Rock, Paper, or Scissors?'
    move1 = gets

    # As the second user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

    puts 'Player 2: Rock, Paper, or Scissors?'
    move2 = gets

    # As a user, I can see a message in the terminal depicting which user won the round.
    # As a user, I can see a message in the terminal noting if there was a tie.


    if move1 == 'Rock' && move2 == 'Scissors'
        p 'Player 1 Wins!'
    elsif move1 == 'Paper' && move2 == 'Rock'
        p 'Player 1 Wins!'
    elsif move1 == 'Scissors' && move2 == 'Paper'
        p 'Player 1 Wins!'
    elsif move1 == move2 
        p 'Tie Game!'
    else
       p 'Player 2 Wins!'
    end
end

game_logic

