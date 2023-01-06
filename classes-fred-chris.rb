# As a developer, I can create a class called Task.

# class Task
# end

# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new

# dishes = Task.new
# vacuum = Task.new
# mow_yard = Task.new

# As a developer, I can initialize each instance of class Task with a title.


# p vacuum

# As a developer, I can see the title of each instance of class Task.

# see above

# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.

# As a developer, I can update the status of each instance of class Task when the task has been completed.

class Task
    def list_of_tasks(title)
        @title = title
        @status = 'incomplete'
    end
    def task_complete
        @status = 'complete'
    end
end

dishes = Task.new
vacuum = Task.new
mow_yard = Task.new
dishes.list_of_tasks('do the dishes')
vacuum.list_of_tasks('vacuum the house')
mow_yard.list_of_tasks('mow the yard')

# p dishes
# dishes.task_complete
# p dishes


# For the following ColorPalette challenge use initialize and attr_accessor methods in your class.

# As a developer, I can create a class called ColorPalette.

class ColorPalette
    attr_accessor :color1, :color2, :color3
    def initialize(color1, color2, color3)
        @color1 = color1
        @color2 = color2
        @color3 = color3
    end
    def all_colors
        "Your color choices are #{color1}, #{color2}, and #{color3}"
    end
end

# As a developer, I can create three instances (objects) of class ColorPalette.
# e.g green = ColorPalette.new

# blue = ColorPalette.new
# red = ColorPalette.new
# grey = ColorPalette.new

# As a developer, I can initialize each instance of the class ColorPalette with three colors.
# e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')

blue = ColorPalette.new('navy', 'sky', 'royal')
red = ColorPalette.new('maroon', 'burgandy', 'pink')
grey = ColorPalette.new('ash', 'charcoal', 'smoke')

# p red
# p grey

# As a developer, I can print the value of each individual color.

# p grey.color3

# As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.

p blue.all_colors

# As a developer, I can change one or more colors of a given palette.

blue.color1 = 'teal'
p blue.all_colors