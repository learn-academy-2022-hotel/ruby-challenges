class Task
    attr_accessor :title, :description, :completed, :duedate
    def initialize(title, description)
        @title = title
        @description = description
        @completed = 'In progress'
        @duedate = 'None'
    end
    def is_complete
        @completed = 'Complete'
    end
    def due_date
        @duedate = Date.new(2023,1,10)
    end
end
