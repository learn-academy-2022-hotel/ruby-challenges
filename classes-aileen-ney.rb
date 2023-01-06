# As a developer, I can create a class called Task.
# class Task
#     def set_title(title)
#         @title = title
#         @complete = "incomplete"
#     end

#     def get_title
#         @title
#     end
#     def completed
#         if @complete == "incomplete"
#             @complete = "complete"
#         end

#     end


# end

# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new

# eat = Task.new
# drink = Task.new
# run = Task.new

# As a developer, I can initialize each instance of class Task with a title.

# drink.set_title('drink')
# eat.set_title('eat')
# run.set_title('run')

# As a developer, I can see the title of each instance of class Task.

# p eat.get_title
# p run.get_title
# p drink.get_title


# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
# p eat.completed
# p run.completed
# p drink.completed

# As a developer, I can update the status of each instance of class Task when the task has been completed.

#done 


############## NEXT CHALLENGES #################


# As a developer, I can create a class called ColorPalette.
class ColorPalette
    attr_accessor :color
    def initialize(color,color2,color3)
    @color = color
    @color2 = color2
    @color3 = color3
    end
    def get_info
   "#{@color} #{@color2} #{@color3}"
    end

end







# As a developer, I can create three instances (objects) of class ColorPalette.

# red = ColorPalette.new 
# white = ColorPalette.new
# blue = ColorPalette.new


# e.g green = ColorPalette.new


# As a developer, I can initialize each instance of the class ColorPalette with three colors.
red = ColorPalette.new('red','pink','maroon')
white = ColorPalette.new('white','kahki','tan')
blue = ColorPalette.new('blue','navy','sky blue')
# e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')


# As a developer, I can print the value of each individual color.
p red.get_info

# As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.


# As a developer, I can change one or more colors of a given palette.
