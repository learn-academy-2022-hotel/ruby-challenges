# For the following Task challenge use initialize, setter, and getter methods for your class.

# As a developer, I can create a class called Task.

# class Task
# end

# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new

# class Task
# end
# dog_walk = Task.new
# wash_dishes = Task.new
# laundry = Task.new
# p dog_walk

# As a developer, I can initialize each instance of class Task with a title.
# class Task
#     def set_task(title)
#         @title = title
#     end
# end
# dog_walk = Task.new
# wash_dishes = Task.new
# laundry = Task.new
# p dog_walk 
# dog_walk.set_task('Walk dog')
# p dog_walk
# wash_dishes.set_task('Wash dishes')
# laundry.set_task('Do laundry')
# p wash_dishes
# p laundry

# As a developer, I can see the title of each instance of class Task.
# class Task
#     def set_task(title)
#         @title = title
#     end
#     def task_title
#         @title
#     end
# end
# dog_walk = Task.new
# wash_dishes = Task.new
# laundry = Task.new
# # p dog_walk 
# dog_walk.set_task('Walk dog')
# # p dog_walk
# wash_dishes.set_task('Wash dishes')
# laundry.set_task('Do laundry')
# p wash_dishes.task_title
# p laundry.task_title
# p dog_walk.task_title

# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
# class Task
#     def initialize(title, accomplished)
#         @title = title
#         @accomplished = 'incomplete'
#     end
#     def task_title
#         @title
#     end
#     def task_status
#         # if @accomplished 
#         # "The task #{@title} is #{@accomplished}"
#         # else
#         "The task #{@title} is not #{@accomplished}"
#         # end
        
#     end
# end
# dog_walk = Task.new('Walk the dog', false)
# # wash_dishes = Task.new
# # laundry = Task.new
# # p dog_walk 
# # dog_walk.set_task('Walk dog')
# # p dog_walk
# # wash_dishes.set_task('Wash dishes')
# # laundry.set_task('Do laundry')
# p dog_walk.task_status

# As a developer, I can update the status of each instance of class Task when the task has been completed.

# class Task
# def initialize(title, accomplished)
# 	@title = title
# 	@accomplished = 'incomplete'
# end
# def task_title
# 	@title
# end
# def task_status
# 	if @accomplished 
# 	"The task #{@title} is #{@accomplished}"
# 	else
# 	"The task #{@title} is not #{@accomplished}"
# 	end
# 	def task_completion
# 		@accomplished = true
# 	end
# end
# end

# dog_walk = Task.new('Walk the dog', false)
# wash_dishes = Task.new
# laundry = Task.new
# p dog_walk 
# dog_walk.set_task('Walk dog')
# p dog_walk
# wash_dishes.set_task('Wash dishes')
# laundry.set_task('Do laundry')
# p dog_walk.task_status
# p dog_walk.task_completion
# p dog_walk.task_status


# For the following ColorPalette challenge use initialize and attr_accessor methods in your class.

# As a developer, I can create a class called ColorPalette.
class ColorPalette
	attr_accessor :green, :blue, :red
	def initialize(green, blue, red)
		@green = green
		@blue = blue
		@red = red
	end
end
green = ColorPalette.new('dark green', 'lime', 'sage')
p green

# As a developer, I can create three instances (objects) of class ColorPalette.
# e.g green = ColorPalette.new
# As a developer, I can initialize each instance of the class ColorPalette with three colors.
# e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')
# As a developer, I can print the value of each individual color.
# As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.
# As a developer, I can change one or more colors of a given palette.