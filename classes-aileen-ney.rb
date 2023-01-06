# As a developer, I can create a class called Task.
class Task
    def set_title(title)
        @title = title
        @complete = "incomplete"
    end

    def get_title
        @title
    end
    def completed
        if @complete == "incomplete"
            @complete = "complete"
        end

    end


end

# As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new

eat = Task.new
drink = Task.new
run = Task.new

# As a developer, I can initialize each instance of class Task with a title.

drink.set_title('drink')
eat.set_title('eat')
run.set_title('run')

# As a developer, I can see the title of each instance of class Task.

p eat.get_title
p run.get_title
p drink.get_title


# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
p eat.completed
p run.completed
p drink.completed

# As a developer, I can update the status of each instance of class Task when the task has been completed.