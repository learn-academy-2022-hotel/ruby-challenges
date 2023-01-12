# <!-- 🐟 Challenges: Animal Kingdom
# Read all stories before starting the challenge. -->

# <!-- As a developer, I can make a generic Animal class. -->
# <!-- As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true. -->
# <!-- As a developer, I can give my Animal an age of 0 upon initialization. -->
# <!-- As a developer, I can age my Animal up one year at a time. -->
# As a developer, I can return my Animal's age, as well as if they're alive.
# Hint: Use attr_accessor as well as an initialize method.
# As a developer, I can create a Fish that inherits from Animal.
# As a developer, I can initialize all of my fish to be cold_blooded. (Yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that.)
# As a developer, I can create a Salmon that inherits from Fish.

class Animal
    attr_accessor :name, :age, :alive 
    def initialize(name, age)
        @name = name
        @age = age
        @alive = true
    end
    def set_age
        @age = 0
    end
    def get_age
        @age += 1
    end
    def alive_status
        if @alive
            "The animal #{@name}, is #{age} years old. "
        else
            "The animal #{@name}, is #{age} years old they are unalived. "
        end
    end
end

# dog = Animal.new("Dog", 0)
# p dog.set_age
# p dog.get_age
# p dog.alive_status

# cat = Animal.new("Cat", 3)
# p cat
# p cat.get_age
# p cat

class Fish < Animal
    def initialize(name_parameter, age_parameter)
        super(name_parameter, age_parameter)
        @cold_blooded = true
    end
    def fish_info
        if @cold_blooded
            "This #{@name} is cold-blooded"
        else
            "This is #{@name} not cold-blooded"
        end
    end
end

class Salmon < Fish
    def initialize(name_parameter, age_parameter, species_parameter)
        super(name_parameter, age_parameter, species_parameter)
    end
    def get_info
        alive_status + fish_info
    end
end

salmon = Salmon.new("Salmon", 3)
p salmon
p salmon.get_info




# As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).

# As a developer, I can see that my Salmon is cold-blooded.
# As a developer, I can age my Salmon up.
# As a developer, I can see a message that tells me all of my Salmon's information.
# As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life.


# Hint: You will need a method that changes the status of alive in the initialize method of Animal.
# As a developer, I can create a Mammal that inherits from Animal.
# As a developer, I can initialize all of my Mammals to be warm_blooded.
# As a developer, I can create a Bear that inherits from Mammal.
# As a developer, I can age my Bear up.
# As a developer, I can see a message that tells me all of my Bear's information.
# As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life.
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.
# As a developer, I can create a Mammal of my choice.
# As a developer, I can interact with the new Mammal via various methods.
# As a developer, I can see a message that tells me all of my new Mammal's information. -->