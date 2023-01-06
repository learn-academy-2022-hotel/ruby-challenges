# ❤️ Challenges
# For the following Task challenge use initialize, setter, and getter methods for your class.

# As a developer, I can create a class called Task.
class Task
    def initialize(title)
        @title = title
        @job_status = 'incomplete'
    end
    def get_title
        @title
    end 
    def task_info
        if @job_status == 'incomplete'
            "You need to finish your #{@title} job"
        else 
            "You can take a 10 min break"
        end
    end 
    def job_finished
        @job_status = 'completed'
    end
end
laundry = Task.new('laundry')
dishes = Task.new('dishes')
nap = Task.new('nap')

# p laundry.task_info
# laundry.job_finished
# p laundry.task_info

# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new
# As a developer, I can initialize each instance of class Task with a title.
# As a developer, I can see the title of each instance of class Task.
# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
# As a developer, I can update the status of each instance of class Task when the task has been completed.

# For the following ColorPalette challenge use initialize and attr_accessor methods in your class.
class ColorPalette 
    attr_accessor :shade1, :shade2, :shade3
    def initialize(shade1, shade2, shade3)
        @shade1 = shade1
        @shade2 = shade2
        @shade3 = shade3
    end 
    def all_colors
        "the colors are #{@shade1}, #{@shade2}, #{@shade3}"
    end
end

blue = ColorPalette.new('Navy', 'Aqua', 'Capri')
red = ColorPalette.new('Pink', 'Scarlett', 'Maroon')
purple = ColorPalette.new('Lavender', 'Violet', 'Plum')
# p purple.all_colors
blue.shade1 = 'Carolina' 
p blue.all_colors

# As a developer, I can create a class called ColorPalette.

# As a developer, I can create three instances (objects) of class ColorPalette.
# e.g green = ColorPalette.new

# As a developer, I can initialize each instance of the class ColorPalette with three colors.
# e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')
# As a developer, I can print the value of each individual color.
# As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.
# As a developer, I can change one or more colors of a given palette.