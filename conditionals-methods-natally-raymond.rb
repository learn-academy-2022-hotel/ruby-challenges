def sum_these_numbers (num1, num2)
    num1 + num2
end
p sum_these_numbers(5, 3)

def is_even number
    if number % 2 == 0
    "#{number} is even"
    else 
    "#{number} is odd"  
    end 
end
 p is_even (6)
 p is_even (3)

def valid_check number
    if number < 10 && number > 1
        "#{number} is valid"
    else
        "#{number} is invalid"
    end
end

p valid_check(4)
p valid_check(20)

def paly_drome pal
    if pal == pal.reverse
        "#{pal} is a palindrome"
    else 
        "#{pal} is not a palindrome" 
    end
end
p paly_drome('Nun')
p paly_drome('Hannah')
p paly_drome('Door')

