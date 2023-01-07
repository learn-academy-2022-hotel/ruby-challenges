# As a developer, I can create a class called Task.

# class Task
# end
# p Task.new
# output: #<Task:0x000000015e8a7988>


# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new

# laundry = Task.new
# homework = Task.new
# dishes = Task.new
# p laundry
# p homework
# p dishes
# output: #<Task:0x000000015388f0f0>
    #<Task:0x000000015388f0a0>
    #<Task:0x000000015388f078>

# As a developer, I can initialize each instance of class Task with a title.

# class Task

#     def initialize(title)
#         @title = title
#     end
# end

# laundry = Task.new('Laundry')
# homework = Task.new('Homework')
# dishes = Task.new('Dishes')
# p laundry
# p homework
# p dishes
# output: #<Task:0x000000012f8ca5c0 @title="Laundry">
    #<Task:0x000000012f8ca570 @title="Homework">
    #<Task:0x000000012f8ca4f8 @title="Dishes">

# As a developer, I can see the title of each instance of class Task.

# class Task

#     def initialize(title)
#         @title = title
#     end

#     def set_title(title)
#         @title = title
#     end

#     def get_title
#         @title
#     end

# end

# laundry = Task.new('Laundry')
# homework = Task.new('Homework')
# dishes = Task.new('Dishes')
# p laundry
# p homework
# p dishes

# laundry.set_title('Wash Laundry')
# p laundry.get_title
# homework.set_title('Do Homework')
# p homework.get_title
# dishes.set_title('Wash Dishes')
# p dishes.get_title
# output: #<Task:0x0000000132902710 @title="Laundry">
#<Task:0x0000000132902698 @title="Homework">
#<Task:0x0000000132902620 @title="Dishes">
# "Wash Laundry"
# "Do Homework"
# "Wash Dishes"

# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.

# class Task
#     attr_accessor :title, :complete

#     def initialize(title)
#         @title = title
#         @complete = false
#     end
#     def set_title(title)
#         @title = title
#     end
#     def get_title
#         @title
#     end
#     def task_info
#         if @complete
#             "#{@title} has been completed"
#         else
#             "#{@title} has not been completed"
#         end
#     end
# end

# laundry = Task.new('Laundry')
# p laundry.task_info
# homework = Task.new('Homework')
# p homework.task_info
# dishes = Task.new('Dishes')
# p dishes.task_info
# output:    # "Laundry has not been completed"   
             # "Homework has not been completed"
             # "Dishes has not been completed"

# As a developer, I can update the status of each instance of class Task when the task has been completed.

# laundry.complete = true
# # p laundry.task_info
# # p homework.task_info
# homework.complete = true
# # p dishes.task_info
# dishes.complete = true
# output:   # "Laundry has been completed" 
            # "Homework has been completed" 
            # "Dishes has been completed"

# For the following ColorPalette challenge use initialize and attr_accessor methods in your class.
# As a developer, I can create a class called ColorPalette.

class ColorPalette
    attr_accessor :color1, :color2, :color3

    def initialize(color1, color2, color3)
        @color1 = color1
        @color2 = color2
        @color3 = color3
    end
end

# As a developer, I can create three instances (objects) of class ColorPalette.
# e.g green = ColorPalette.new

# green = ColorPalette.new
# p green
# #output: #<ColorPalette:0x00000001488cd720>
# blue = ColorPalette.new
# p blue
# #<ColorPalette:0x00000001488cd5b8>
# red = ColorPalette.new
# p red
#<ColorPalette:0x00000001488cd4f0>

# As a developer, I can initialize each instance of the class ColorPalette with three colors.
# e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')
green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')
p green
#output: #<ColorPalette:0x000000014d038970 @color1="Chartreuse", @color2="Kelly", @color3="Seafoam">
blue = ColorPalette.new('Indigo', 'Lapis', 'Azure')
p blue
#output: #<ColorPalette:0x000000010700da40 @color1="Indigo", @color2="Lapis", @color3="Azure">
red = ColorPalette.new('Cherry', 'Rose', 'Blood')
p red
#output: #<ColorPalette:0x000000010700d7c0 @color1="Cherry", @color2="Rose", @color3="Blood">


# As a developer, I can print the value of each individual color.
# As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.
# As a developer, I can change one or more colors of a given palette.