# ❤️ Challenges
# For the following Task challenge use initialize, setter, and getter methods for your class.
# As a developer, I can create a class called Task.
# As a developer, I can initialize each instance of class Task with a title.
# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new
# As a developer, I can see the title of each instance of class Task.
# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
# As a developer, I can update the status of each instance of class Task when the task has been completed.
# class Task
#     def initialize(title)
#         @title = title
#         @status = "incomplete"
#     end

#     def get_title
#         @title
#     end

#     def set_status
#         if @status == "incomplete"
#             @status = "complete"
#         else 
#             @status = "incomplete"
#         end
#     end
# end

# laundry = Task.new('laundry')
# p laundry.get_title
# p laundry
# laundry.set_status
# p laundry
# laundry.set_status
# p laundry

# wash_dishes = Task.new('wash dishes')
# rake_leaves = Task.new('rake leaves')


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
    attr_writer :color1,:color2,:color3?

    def initialize(color1, color2, color3)
        @color1 = color1
        @color2 = color2
        @color3 = color3
    end

    # def get_color
    #     [@color1,
    #     @color2,
    #     @color3]
    # end     
    def all_colors
      p  "The first color is #{color1}, the second color is #{color2} and the last color is #{color3}."
    end        
end

green_colors= ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')
# red = ColorPalette.new('red')
# blue = ColorPalette.new('blue')
# p green_colors.color1
# p red.color
# p blue.color
# green_colors.all_colors
p green_colors.color1
green_colors.color1 = 'red'
p green_colors.color1
# p green_colors.get_color