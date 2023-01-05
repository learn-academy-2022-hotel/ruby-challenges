# 3.0.0 :001 > 5 + 5
#  => 10 
# 3.0.0 :002 > 6 - 5
#  => 1 
# 3.0.0 :003 > 4 * 4
#  => 16 
# 3.0.0 :004 > 20 / 5
#  => 4 
# 3.0.0 :005 > 5 + 2.0
#  => 7.0 
# 3.0.0 :006 > 7 - 3.0
#  => 4.0 
# 3.0.0 :007 > 3 * 3.0
#  => 9.0 
# 3.0.0 :008 > 8 / 4.0
#  => 2.0 
# 3.0.0 :009 > 6 % 3
#  => 0 
# 3.0.0 :010 > 5 / 0
# (irb):10:in `/': divided by 0 (ZeroDivisionError)
#         from (irb):10:in `<main>'                  
#         from /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/irb-1.5.0/exe/irb:11:in `<top (required)>'                              
#         from /Users/learnacademy/.rvm/gems/ruby-3.0.0/bin/irb:23:in `load'
#         from /Users/learnacademy/.rvm/gems/ruby-3.0.0/bin/irb:23:in `<main>'
# 3.0.0 :011 > 8.0 / 0
#  => Infinity 
# 3.0.0 :012 > 0 / 0
# (irb):12:in `/': divided by 0 (ZeroDivisionError)
#         from (irb):12:in `<main>'                  
#         from /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/irb-1.5.0/exe/irb:11:in `<top (required)>'                          
#         from /Users/learnacademy/.rvm/gems/ruby-3.0.0/bin/irb:23:in `load'
#         from /Users/learnacademy/.rvm/gems/ruby-3.0.0/bin/irb:23:in `<main>'
# 3.0.0 :013 > number = 6
#  => 6 
# 3.0.0 :014 > number / 2
#  => 3 
# 3.0.0 :015 > number % 3
#  => 0 
# 3.0.0 :016 > num_two = 13
#  => 13 
# 3.0.0 :017 > number < num_two
#  => true 
# 3.0.0 :018 > number = 7
#  => 7 
# 3.0.0 :019 > num_two = num_two * 26
#  => 338 

my_name = 'chris'
p "#{my_name} is Doms partner"

p my_name.upcase
p my_name.reverse
p my_name.include?('i')
p my_name.capitalize
p my_name.delete('s')
p my_name.index('h')
p my_name.swapcase

tv_show = ['Lost', 'Spongebob', 'Fresh Prince', 'CSI', 'Sons of Anarchy']
p tv_show.length
p tv_show.first
p tv_show[3]
p tv_show.reverse!
p top_shows = []
p top_shows << tv_show[2] << tv_show[4]