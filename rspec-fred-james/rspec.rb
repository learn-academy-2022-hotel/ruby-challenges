class Task
    attr_accessor :title, :description, :status, :date
    def initialize(title, description, status, date)
        @title = title
        @description = description
        @status = 'in progress'
        @date = Date.parse(date)
    end

    def finished_task
        @status = 'complete'
    end
end

class TaskList
end