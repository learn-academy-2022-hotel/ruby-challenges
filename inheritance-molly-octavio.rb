# 🐟 Challenges: Animal Kingdom
# Read all stories before starting the challenge.

# As a developer, I can make a generic Animal class.
# As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.
# As a developer, I can give my Animal an age of 0 upon initialization.
# As a developer, I can age my Animal up one year at a time.
# As a developer, I can return my Animal's age, as well as if they're alive.
# Hint: Use attr_accessor as well as an initialize method.
class Animal
    attr_accessor :alive, :age
    def initialize()
        @alive = true
        @age = 0
    end

    def happy_birthday()
        @age += 1
    end

    def death
        @alive = false
    end

end

# juno = Animal.new()
# p juno.alive, juno.age
# juno.age += 1
# p juno
# juno.happy_birthday # 1
# juno.happy_birthday # 2
# p juno

# As a developer, I can create a Fish that inherits from Animal.
# As a developer, I can initialize all of my fish to be cold_blooded. (Yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that.)
class Fish < Animal
    attr_accessor :cold_blooded
    def initialize()
        super()
        @cold_blooded = true
    end
end

# juno2 = Fish.new
# p juno2.alive, juno2.age, juno2.cold_blooded

# As a developer, I can create a Salmon that inherits from Fish.
# As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
# As a developer, I can see that my Salmon is cold-blooded.
# As a developer, I can age my Salmon up.
# As a developer, I can see a message that tells me all of my Salmon's information.
# As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life.
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.
class Salmon < Fish
    attr_accessor :species
    def initialize(species)
        super()
        @species = species
    end

    def info
        if cold_blooded and alive
            "My cold-blooded #{@species} salmon is very much alive and #{@age} years old"
        else 
            "My #{@species} salmon is very much dead and was #{@age} years old (at the time of death)"
        end
    end
end

# juno3 = Salmon.new('Atlantic')
# p juno3
# juno3.alive = false
# juno3.cold_blooded = false
# p juno3.species
# p juno3.cold_blooded
# p juno3.happy_birthday
# p juno3.info

# As a developer, I can create a Mammal that inherits from Animal.
# As a developer, I can initialize all of my Mammals to be warm_blooded.
class Mammal < Animal
    attr_accessor :warm_blooded
    def initialize
        super()
        @warm_blooded = true
    end
end

# juno4 = Mammal.new
# p juno4

# As a developer, I can create a Bear that inherits from Mammal.
# As a developer, I can age my Bear up.
# As a developer, I can see a message that tells me all of my Bear's information.
# As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life.
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.
class Bear < Mammal
    def initialize
        super()
    end

    def info 
        if warm_blooded and alive
            "My warm-blooded bear is alive and #{@age} years old "
        else 
            "My warm-blooded bear is dead and died at #{@age} years old "
        end
    end

    def new_method
        if age >= 20 
            'works'
        end
    end
end

juno5 = Bear.new
juno5.age = 20
# p juno5.age +=1
# p juno5.happy_birthday
# p juno5.info
# p juno5.death
p juno5.new_method
# p juno5.info

# As a developer, I can create a Mammal of my choice.
# As a developer, I can interact with the new Mammal via various methods.
# As a developer, I can see a message that tells me all of my new Mammal's information.

# 🏔 Stretch Goals
# As a developer, I can keep a collection of two of each Animal.
# Hint: You'll want to add your Animals into an array.
# As a developer, I can sort my collection of Animals based on age.
# Hint: Find out how the spaceship operator can help you with an array.
# As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.

1 <=> 0 # 1