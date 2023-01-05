# ❤️ Challenges


# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_these_numbers (integer1, integer2) 
 integer1 + integer2
end 
p sum_these_numbers(1, 50)
# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
def is_even (integer)
    if integer % 2 == 0
        p true
    else 
        p false
 end
end
is_even(10)
is_even(9)
# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
def validmeth(integer)
    if integer >= 1 && integer <=10
        p 'Valid'
    else 
        p 'Invalid'
 end 
end
validmeth(11)
validmeth(5)
# Create a method that takes in a string and determines if the string is a palindrome.
def stringmeth(string)
    if string.reverse == string
        p 'this is a palindrome'
    else 
        p 'this is not  a palindrome'
 end
end
stringmeth('wow')
stringmeth('hello')
# ✂️ Challenge: Rock, Paper, Scissors


# As the first user, I can see a prompt in the terminal to enter my name.
p 'User one, please enter your name'
userone = gets.chomp
# As the second user, I can see a prompt in the terminal to enter my name.
 p 'User two, please enter your name'
 usertwo = gets.chomp

# As the first user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
p "#{userone}, Please type either rock, paper, or scissors."
useronechoice = gets.chomp
# As the second user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
p "#{usertwo}, Please type either rock, paper, or scissors."
usertwochoice = gets.chomp
# As a user, I can see a message in the terminal depicting which user won the round.

# As a user, I can see a message in the terminal noting if there was a tie.

# ✅ Challenge: Password Checker


# As a developer, you have been tasked with creating the user registration for a secure web site. To test your code, enter the user ID and password in the terminal to find out if they are acceptable. The user ID and password must adhere to the to following criteria:

# User ID and password cannot be the same.
# User ID and password must be at least six characters long.
# Password must contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".
# User password must contain at least one number