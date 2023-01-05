def intro_message (name1)
    p "hello #{name1}"
end 
p  intro_message('Raymond')

my_name ='kevin'
 p my_name.upcase
 p my_name.reverse
 p my_name.include?'e'
 p my_name.capitalize
 p my_name.delete'n'
 p my_name.index('e')
 p my_name.swapcase

my_array = ['The office', 'Live PD', 'Criminal Minds', 'The Wire', 'Wednesday']

p my_array.length
p my_array.first
p my_array.at(3)

p my_array = my_array.reverse
p my_array

new_array = []
p new_array<< 'The office'<<'Live PD'