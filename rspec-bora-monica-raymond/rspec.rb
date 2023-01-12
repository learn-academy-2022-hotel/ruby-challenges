class Task
    attr_accessor :title, :description, :completion
    def initialize(title, description='Wash clothes')
        @title = title
        @description = description
        @completion = false
    end
    def status
        @completion = true
    end
end