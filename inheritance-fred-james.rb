# Challenges: Animal Kingdom
# Read all stories before starting the challenge.

# As a developer, I can make a generic Animal class.

class Animal
    # attr_accessor :alive, :age, :ager, :animal_info
    def initialize(alive, age)
    # As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.   
        @alive = alive
    # As a developer, I can give my Animal an age of 0 upon initialization.    
        @age = age
    end
    def animal_info
        p "It is #{@alive} that the animal is alive, and it is #{@age} years old."

    end
    def ager 
    # As a developer, I can age my Animal up one year at a time.   
        @age += 1
    end        
end
class Fish < Animal
    attr_accessor :alive, :age
    def initialize(alive, age, blood_temp)
        super(alive, age)
        @blood_temp = 'cold blooded'
    end 
end

# As a developer, I can create a Fish that inherits from Animal.
# As a developer, I can initialize all of my fish to be cold_blooded. (Yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that.)

class Salmon < Fish
    attr_accessor :alive, :age, :blood_temp
    def initialize(alive, age, blood_temp, species)
        super(alive, age, blood_temp)
        @species = species
    end
    def end_of_life
        if @age > 3
            @alive = false
        end
    end
end
# As a developer, I can create a Salmon that inherits from Fish.
# As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
# As a developer, I can see that my Salmon is cold-blooded.
# As a developer, I can age my Salmon up.
# As a developer, I can see a message that tells me all of my Salmon's information.
# As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life.
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.
# Hint: Use attr_accessor as well as an initialize method.

test_animal = Animal.new(true, 0)
p test_animal
test_animal.ager
# As a developer, I can return my Animal's age, as well as if they're alive.
test_animal.animal_info
atlantic_salmon = Salmon.new(true, 0, 'old blooded', 'atlantic')
p atlantic_salmon
p atlantic_salmon.blood_temp
atlantic_salmon.ager
atlantic_salmon.ager
atlantic_salmon.animal_info
atlantic_salmon.ager
atlantic_salmon.ager
atlantic_salmon.end_of_life
atlantic_salmon.animal_info


# As a developer, I can create a Mammal that inherits from Animal.
# As a developer, I can initialize all of my Mammals to be warm_blooded.
# As a developer, I can create a Bear that inherits from Mammal.
# As a developer, I can age my Bear up.
# As a developer, I can see a message that tells me all of my Bear's information.
# As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life.
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.

class Mammal < Animal
    attr_accessor :alive, :age
    def initialize(alive, age, blood_temp)
        super(alive, age)
        @blood_temp = 'warm_blooded'
    end
end
class Bear < Mammal
    attr_accessor :alive, :age, :blood_temp    
    def initialize(alive, age, blood_temp)
        super(alive, age, blood_temp)
    end
    def end_of_life
        if @age > 19
            @alive = false
        end
    end
end

yogi = Bear.new(true, 0, 'warm blooded')
p yogi
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.ager
yogi.end_of_life
p yogi
yogi.ager
yogi.end_of_life
p yogi

# As a developer, I can create a Mammal of my choice.
# As a developer, I can interact with the new Mammal via various methods.
# As a developer, I can see a message that tells me all of my new Mammal's information.

class Whale < Mammal
    attr_accessor :alive, :age, :blood_temp    
    def initialize(alive, age, blood_temp)
        super(alive, age, blood_temp)
    end
    def end_of_life
        if @age > 19
            @alive = false
        end
    end
    def blood_temp_checker
        p "Your whale is #{age} and alive."
    end
end

moby = Whale.new(true, 15, 'warm blooded')
moby.blood_temp_checker

# 🏔 Stretch Goals
# As a developer, I can keep a collection of two of each Animal.
# Hint: You'll want to add your Animals into an array.
# As a developer, I can sort my collection of Animals based on age.
# Hint: Find out how the spaceship operator can help you with an array.
# As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.