# As a developer, I can make a generic Animal class.
# As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.
# As a developer, I can give my Animal an age of 0 upon initialization.
# As a developer, I can age my Animal up one year at a time.
# As a developer, I can return my Animal's age, as well as if they're alive.
# Hint: Use attr_accessor as well as an initialize method.
# As a developer, I can create a Fish that inherits from Animal.
# As a developer, I can initialize all of my fish to be cold_blooded. (Yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that.)
# As a developer, I can create a Salmon that inherits from Fish.
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
animal_array = []
class Animal
    attr_accessor :alive, :age
    def initialize(age)
        @alive = true
        @age = age
    end
    def age_up 
        @age = @age + 1
    end
    # def shovel_animal
    #     animal_array << Animal
    # end
end    

my_dog = Animal.new(0)

# p my_dog

class Fish < Animal 
    def initialize(age_parameter)
        super(age_parameter)
        @blood_temp = 'Cold blooded'
    end
end

my_fish = Fish.new(0)
# p my_fish

class Salmon < Fish
    def initialize(age, species)
        super(age)
        @species = species
    end
    def get_info
    "My #{@species} Salmon is #{@age} years old and is #{@blood_temp}"
    end
    def life_span
        if @age >= 4
        @alive = 'dead'   
     end
    end    
end   

my_fish3 = Salmon.new(0,'Atlantic')
my_fish2 = Salmon.new(0,'Sockeye')
my_fish2.life_span
# p my_fish2

# my_fish2.age_up
# my_fish2.age_up
# my_fish2.age_up
# my_fish2.age_up

# my_fish2.life_span
# p my_fish2

class Mammal < Animal
    def initialize(age)
        super(age)
        @blood_temp = 'Warm blooded'
    end
end

class Bear < Mammal
    def initialize(age)
        super(age)
    end
    def bear_info
        "This bear is #{@age} years old."
    end
    def life_span
        if @age >= 20
            @alive = 'dead'   
        end
    end
end

new_bear = Bear.new(13)
p new_bear

new_bear.age_up
new_bear.age_up
new_bear.age_up
new_bear.age_up
new_bear.age_up
new_bear.age_up
new_bear.age_up

# p new_bear

p new_bear.bear_info
new_bear.life_span
# p new_bear

class Giraffe < Mammal
    def initialize(age)
        super(age)
    end
    def life_span
        if @age >= 30
            @alive = 'dead'   
        end
    end
    def giraffe_info
        "This giraffe is #{@age} years old and #{@alive}."
    end
end

my_giraffe = Giraffe.new(25)
# p my_giraffe

my_giraffe.age_up
my_giraffe.age_up
my_giraffe.age_up
my_giraffe.age_up
my_giraffe.age_up

my_giraffe.life_span
# p my_giraffe
# p my_giraffe.giraffe_info
# As a developer, I can create a Mammal of my choice.
# As a developer, I can interact with the new Mammal via various methods.
# As a developer, I can see a message that tells me all of my new Mammal's information.

# As a developer, I can keep a collection of two of each Animal.
# Hint: You'll want to add your Animals into an array.

# animal_array << new_bear
# animal_array << my_giraffe
# animal_array << my_fish2
# animal_array << my_fish3
my_giraffe.shovel_animal
p animal_array
# As a developer, I can sort my collection of Animals based on age.
# Hint: Find out how the spaceship operator can help you with an array.
# As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.