
# ❤️ Challenges
# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

    def sum_these_numbers(num1, num2)
       p num1 + num2
    end
sum_these_numbers(7, 6)
    # 13
# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

    def is_even(num)
        if num % 2 == 0
            p 'true'
        else
            p 'false'
        end
    end
is_even(4)
    # "true"

# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
    def in_or_out(num)
        if num >= 1 && num <= 10
            p 'Valid'
        else 
            p 'Invalid'
        end
    end
in_or_out(15)
in_or_out(8)

# Create a method that takes in a string and determines if the string is a palindrome.

    def palindrome(string)
        if string == string.reverse 
            p 'Yes, this is a palindrome'
        else 
            p 'No, this is not a palindrome'
        end
    end
palindrome('ruby')
palindrome('tacocat')

# ✂️ Challenge: Rock, Paper, Scissors

# As the first user, I can see a prompt in the terminal to enter my name.

    p 'Player one enter your name'
    first_name = gets.chomp
    p first_name

# As the second user, I can see a prompt in the terminal to enter my name.

    p 'Player two enter your name'
    second_name = gets.chomp
    p second_name

# As the first user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

    p "#{first_name} choose Rock, Paper or Scissors"
    first_choice = gets.chomp
    p first_choice

# As the second user, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
    p "#{second_name} choose Rock, Paper or Scissors"
    second_choice = gets.chomp
    p second_choice

# As a user, I can see a message in the terminal depicting which user won the round.
# As a user, I can see a message in the terminal noting if there was a tie.
    def winner(firstname, secondname, firstchoice, secondchoice)
        if firstchoice == 'Rock' && secondchoice == 'Paper'
            p "#{secondname} WINS"
        elsif firstchoice == 'Paper' && secondchoice == 'Rock'
            p "#{firstname} WINS"
        elsif firstchoice == 'Rock' && secondchoice == 'Rock'
            p "IT'S A TIE" 
        elsif firstchoice == 'Paper' && secondchoice == 'Scissors'
            p "#{second_name} WINS"
        elsif firstchoice == 'Scissors' && secondchoice == 'Paper'
            p "#{firstname} WINS"
        elsif first_choice == 'Paper' && second_choice == 'Paper'
            p "IT'S A TIE" 
        elsif first_choice == 'Rock' && second_choice == 'Scissors'
            p "#{firstname} WINS"    
        elsif firstchoice == 'Scissors' && secondchoice == 'Rock'
            p "#{secondname} WINS" 
        elsif firstchoice == 'Scissors' && secondchoice == 'Scissors'
            p "IT'S A TIE" 
        end
    end

winner(first_name, second_name, first_choice, second_choice)