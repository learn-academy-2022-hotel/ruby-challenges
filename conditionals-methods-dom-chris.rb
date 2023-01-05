def sum_these_numbers(int1, int2)
    p int1 + int2
end
sum_these_numbers(3, 10)

def is_even(int)
    if int % 2 == 0
        p true
    else
        p false
    end
end

is_even(9)

def btwn_1_10(int)
    if int >= 1 && int <= 10
        p 'Valid'
    else
        p 'Invalid'
    end
end

btwn_1_10(100)

def palindrome_check(str)
    if str == str.reverse
        p 'This is a palindrome'
    else
        p 'Not a palindrome'
    end
end

palindrome_check('hello')

# Rock Paper Scissors Game

# p 'Player 1, please enter your name'
# user_1_name = gets.chomp
# p user_1_name

# p 'Player 2, please enter your name'
# user_2_name = gets.chomp
# p user_2_name

# p 'Player 1, choose rock, paper, or scissors'
# user_1_choice = gets.chomp

# p 'Player 2, choose rock, paper, or scissors'
# user_2_choice = gets.chomp

# def r_p_s(p1, p1c, p2, p2c)
#     if p1c == 'rock' && p2c == 'paper'
#         p "#{p2} has won!"
#     elsif p1c == 'paper' && p2c == 'rock'
#         p "#{p1} has won!"
#     elsif p1c == 'scissors' && p2c == 'paper'
#         p "#{p1} has won!"
#     elsif p1c == 'paper' && p2c == 'scissors'
#         p "#{p2} has won!"
#     elsif p1c == 'rock' && p2c == 'scissors'
#         p "#{p1} has won!"
#     elsif p1c == 'scissors' && p2c == 'rock'
#         p "#{p2} has won!"
#     else
#         p "There was a tie"
#     end
# end

# r_p_s(user_1_name, user_1_choice, user_2_name, user_2_choice)

# Password Checker

p 'Please enter your username'
user_name = gets.chomp

p 'Please enter your password'
password = gets.chomp

def password_checker(username, pw)
    if username == pw
        p 'Username and password cannot be the same'
    elsif username.length < 6 || pw.length < 6
        p 'Username and password must be at least 6 characters long'
    elsif !pw.count('!#$')
        p 'Password must contain at least one of the following: !#$'
    elsif username.include?(' ' || '!' || '#' || '$')
        p 'Username cannot contain the following characters: !#$ or spaces'
    elsif pw == 'password'
        p 'Password cannot be password'
    elsif !pw.count('0-9')
        p 'Password must contain at least one number'
    end
end

password_checker(user_name, password)