# User Stories
# As a developer, I can create a Task.
# Finished in 0.00164 seconds (files took 0.05262 seconds to load)
# 1 example, 0 failures

# As a developer, I can give a Task a title and retrieve it.
# As a developer, I can give a Task a description and retrieve it.
# As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
# As a developer, when I print a Task that is done, its status is shown.
# As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

class Task 
  attr_accessor :title, :description, :status, :date
  def initialize (title = 'none', description = 'none', status = 'in progress', date = 'none')
    @title = title
    @description = description
    @status = status
    @date = date
  end

  def is_done 
    @status = 'done'
  end
end 

# 🏔 Stretch Goals
# As a developer, I can add all of my Tasks to a TaskList.
# As a developer with a TaskList, I can print the completed items.
# As a developer with a TaskList, I can print the incomplete items.
# As a developer with a TaskList, I can list all the not completed items that are due today.
# As a developer with a TaskList, I can list all the incomplete items in order of due date.
# As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
