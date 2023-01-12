class Task 
    attr_accessor :title, :description :done

    def initialize(title, description = 'white and is a square')
        @title = title
        @description = description
    end
end
class Done
    @done = true
end
