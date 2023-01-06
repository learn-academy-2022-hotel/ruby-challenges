# For the following Task challenge use initialize, setter, and getter methods for your class.
# As a developer, I can create a class called Task.
# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new
# As a developer, I can initialize each instance of class Task with a title.
# As a developer, I can see the title of each instance of class Task.
# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
# As a developer, I can update the status of each instance of class Task when the task has been completed.


class Task 
    
end

# wash_car = Task.new
# do_laundry = Task.new
# take_out_trash = Task.new

# class Task
#     def initialize(title)
#         @title = title 
#         @status = false
#     end
#     def get_title
#             @title 
#     end
    
#     def task_done
#         if @status
#                 "You have completed the #{@title} task" 
#         else 
#             "You have not completed the #{@title} task"
#         end
#     end 
#     def completed_task 
#         @status = true
#     end
# end
#  wash_car = Task.new('Wash Car')
#  p wash_car.get_title
#  p wash_car.completed_task
#  p wash_car.task_done

# do_laundry = Task.new('Do Laundry')
# p do_laundry.get_title
# p do_laundry.completed_task
# p do_laundry.task_done


# take_out_trash = Task.new('Take Out Trash')
# p take_out_trash.get_title
# p take_out_trash.completed_task
# p take_out_trash.task_done
# p take_out_trash.completed_task





# For the following ColorPalette challenge use initialize and attr_accessor methods in your class.
# As a developer, I can create a class called ColorPalette.
# As a developer, I can create three instances (objects) of class ColorPalette.
# e.g green = ColorPalette.new
# As a developer, I can initialize each instance of the class ColorPalette with three colors.
# e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')

# As a developer, I can print the value of each individual color.
# As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.
# As a developer, I can change one or more colors of a given palette.

class ColorPalette
    attr_accessor
    def initialize(color1, color2, color3)
        @color1 = color1 
        @color2 = color2 
        @color3 = color3


    end
end
# p ColorPalette.new

blue = ColorPalette.new('Royal Blue', 'Perriwinkle', 'Liberty')
red = ColorPalette.new('Crimson', 'Maroon', 'Cinnabear')
green = ColorPalette.new('Emerald', 'Fern', 'Evergreen')


p blue
p red
p green


