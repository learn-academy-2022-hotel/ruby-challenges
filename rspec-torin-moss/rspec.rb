# User Stories
# As a developer, I can create a Task.
# class Task
# end
# As a developer, I can give a Task a title and retrieve it.
# class Task
#   attr_accessor :title
# end
# As a developer, I can give a Task a description and retrieve it.
# class Task
#   attr_accessor :title, :description
# end
# As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
# class Task
#   attr_accessor :title, :description, :done
# def initialize(title, description='in progress')
#   @title = title
#   @description  = description
#   @done = false
# end
# As a developer, when I print a Task that is done, its status is shown.
class Task
  attr_accessor :title, :description, :done
  def initialize(title, description='in progress')
    @title = title
    @description  = description
    @done = false
  end
  def completed
    @done = true
  end
end
# As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

# 🏔 Stretch Goals
# As a developer, I can add all of my Tasks to a TaskList.
# As a developer with a TaskList, I can print the completed items.
# As a developer with a TaskList, I can print the incomplete items.
# As a developer with a TaskList, I can list all the not completed items that are due today.
# As a developer with a TaskList, I can list all the incomplete items in order of due date.
# As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.