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