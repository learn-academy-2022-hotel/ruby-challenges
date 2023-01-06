# As a developer, I can create a class called Task.
class Task
end
# p Task.new 

# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new

dishes = Task.new
cooking = Task.new
cleaning = Task.new

# p dishes 


# As a developer, I can initialize each instance of class Task with a title.

class Task 
  def initialize (title)
    @title = title
  end 
end 


# As a developer, I can see the title of each instance of class Task.
dishes = Task.new('Dishes')
cooking = Task.new('Cooking')
cleaning = Task.new('Cleaning')

p dishes
p cooking 
p cleaning

# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.

class Task 
  def initialize (title, status)
    @title = title
    @status = 'incomplete'
  end 
end 

cleaning = Task.new('Cleaning', @status)
p cleaning

# As a developer, I can update the status of each instance of class Task when the task has been completed.

class Task 
  def initialize (title, status)
    @title = title
    @status = 'incomplete'
  end 
  def is_complete
    @status = 'complete'
  end  
end 

cleaning.is_complete 
p cleaning

# As a developer, I can create a class called ColorPalette.
class ColorPalette
end

# As a developer, I can create three instances (objects) of class ColorPalette.
# e.g green = ColorPalette.new

green = ColorPalette.new
blue = ColorPalette.new
red = ColorPalette.new

# As a developer, I can initialize each instance of the class ColorPalette with three colors.

class ColorPalette
  def initialize(name1, name2, name3)
    @name1 = name1
    @name2 = name2
    @name3 = name3
  end
end
# e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')

green = ColorPalette.new('Charteuse', 'Kelly', 'Seafoam')
blue = ColorPalette.new('Midnight', 'Sky', 'Ocean')
red = ColorPalette.new('Brick', 'Maroon', 'Racecar')


# As a developer, I can print the value of each individual color.
p blue
p green
p red
# As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.

class ColorPalette
  def initialize(name1, name2, name3)
    @name1 = name1
    @name2 = name2
    @name3 = name3
  end
  def all_colors
    "Three shades of this color are: #{@name1}, #{@name2}, and #{@name3}."
  end
end

p blue.all_colors


# As a developer, I can change one or more colors of a given palette.

class ColorPalette

  attr_accessor :name1, :name2, :name3

  def initialize(name1, name2, name3)
    @name1 = name1
    @name2 = name2
    @name3 = name3
  end
  def all_colors
    "Three shades of this color are: #{@name1}, #{@name2}, and #{@name3}."
  end
  def update_color(name1, name2, name3)
    @name1 = name1
    @name2 = name2
    @name3 = name3
  end
end

p blue
blue.update_color('Dark', 'Light', 'Navy')
p blue