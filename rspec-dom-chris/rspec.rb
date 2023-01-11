class Task
    attr_accessor :title, :description, :done_yet, :due_date
    def initialize(title, description, due_date)
        @title = title
        @description = description
        @done_yet = 'In Progress'
        @due_date = due_date
    end
    def complete
        @done_yet = 'done'
    end
end