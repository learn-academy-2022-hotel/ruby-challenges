# def sum_these_numbers(num, num2)
#     p num + num2 
# end

# sum_these_numbers(5,6)

# def is_even number 
#     if number % 2 == 0
#         p true
#     else 
#         p false 
#     end  
# end      

# is_even(6)
# is_even(5)

# def num_included numbers 
#     if numbers>0 && numbers<=10
#         p "valid"
#     else
#         p "invalid"        
#     end
# end

# num_included(3)
# num_included(13)

# def palindrome word
#     if word == word.reverse 
#         p "#{word} is a palindrome."
#     else 
#         p "#{word} is not a palindrome."
#     end
# end

# palindrome 'hotel'
# palindrome 'racecar'

# puts 'Player 1 enter your name.'
# player1 = gets.chomp

# puts 'Player 2 enter your name.'
# player2 = gets.chomp

# puts "#{player1} please type rock, paper, and scissors."
# player1_item = gets.chomp

# puts "#{player2} please type rock, paper, and scissors."
# player2_item = gets.chomp

#     if player1_item == 'paper' && player2_item == 'rock'
#             p "#{player1} you win!"
#         elsif player1_item == 'rock' && player2_item == 'scissors'
#             p "#{player1} you win!"
#         elsif player1_item == 'scissors' && player2_item == 'paper'
#             p "#{player1} you win!"
#         elsif player1_item == player2_item
#             p "#{player1} and #{player2} you tie!"
#         else 
#             p "#{player2} you win!"
#     end

puts 'Enter user ID'
id = gets.chomp

puts 'Enter password'
password = gets.chomp

if id == password
        p "ID and password cannot be the same"
    elsif id.length<6 && password.length<6
        p "ID and password must be at least characters long"
    elsif !password.include?('!') || !password.include?('#') || !password.include?('$')  
        p "Password must contain at least one of :!,#,$"   
    elsif id.include?('!') || id.include?('#') || id.include?('$') 
         p "ID must contain at least one of :!,#,$"  
    elsif password == "password"
         p "password cannot be the word 'password.'"
    elsif !password.include?(/\d+/)    
        p "Password needs to include at least one number."
end




