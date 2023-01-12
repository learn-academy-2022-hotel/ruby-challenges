# As a developer, I can make a generic Animal class.

# As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.

# As a developer, I can give my Animal an age of 0 upon initialization.

# As a developer, I can age my Animal up one year at a time.

# As a developer, I can return my Animal's age, as well as if they're alive.
class Animal
    attr_accessor :age, :status
    def initialize()
        @age = 0
        if @age < 4
            @status = 'alive'
        else
            @status = 'dead'
        end
        def add_one_year
            year_older = @age + 1
            @age = year_older
        end
    end
    def animal_info
        if @status == 'alive'
            "Your animal is #{@status} and is #{@age} year(s) old."
        end
    end
end

# Hint: Use attr_accessor as well as an initialize method.
# As a developer, I can create a Fish that inherits from Animal.


# As a developer, I can initialize all of my fish to be cold_blooded. (Yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that.)
class Fish < Animal
    attr_accessor :age, :status, :blood_typing
    def initialize()
        super()
        @blood_typing = 'cold-blooded'
    end
end

# As a developer, I can create a Salmon that inherits from Fish.


# As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).

class Salmon < Fish
    attr_accessor :age, :status, :blood_typing, :species
    def initialize()
        super()
        @species = 'Atlantic'
    end
    def salmon_info
        if @age < 4
            "Your salmon is #{@age} year(s) old, is #{@status}, is #{@blood_typing}, and is part of the species #{@species}"
        elsif @age >= 4
            "Your salmon was #{@age} years old, and died peacefully."
        end
    end
end

salmon = Salmon.new

# As a developer, I can see that my Salmon is cold-blooded.

p salmon.blood_typing

# As a developer, I can age my Salmon up.

# salmon.add_one_year
p salmon.age

# As a developer, I can see a message that tells me all of my Salmon's information.

p salmon.salmon_info

# As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life.
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.

salmon.add_one_year
salmon.add_one_year
salmon.add_one_year
p salmon.salmon_info

# As a developer, I can create a Mammal that inherits from Animal.


# As a developer, I can initialize all of my Mammals to be warm_blooded.


class Mammal < Animal
    attr_accessor :age, :status, :blood_typing
    def initialize
        super()
        @blood_typing = 'warm-blooded'
    end
end

# As a developer, I can create a Bear that inherits from Mammal.

class Bear < Mammal
    attr_accessor :age, :status, :blood_typing
    def initialize
        super()
    end
    def bear_info
        if @age < 20
            "Your bear is #{@age} year(s) old, is #{@status} and well, and is #{@blood_typing}"
        else
            "Your bear was #{@age} years old and died of old age."
        end
    end
end

bear = Bear.new
# p bear.age
# As a developer, I can age my Bear up.

bear.add_one_year
bear.add_one_year

# As a developer, I can see a message that tells me all of my Bear's information.

# p bear.bear_info

# As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life.

bear.add_one_year
bear.add_one_year
bear.add_one_year
bear.add_one_year
bear.add_one_year
bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year
# bear.add_one_year


# p bear.bear_info
# Hint: You will need a method that changes the status of alive in the initialize method of Animal.
# As a developer, I can create a Mammal of my choice.

class Dog < Mammal
    attr_accessor :age, :status, :blood_typing
    def initialize
        super()
    end
    def dog_info
        "Your dog is #{@age} year(s) old, is #{@status}, and is #{@blood_typing}"
    end
end

# As a developer, I can interact with the new Mammal via various methods.

dog = Dog.new

p dog.age
p dog.status

# As a developer, I can see a message that tells me all of my new Mammal's information.

p dog.dog_info


# 🏔 Stretch Goals
# As a developer, I can keep a collection of two of each Animal.
# Hint: You'll want to add your Animals into an array.

class Tuna < Fish
    attr_accessor :age, :status, :blood_typing
    def initialize
        super()
    end
end

tuna = Tuna.new

animal_collection = []
animal_collection << salmon
animal_collection << bear
animal_collection << dog
animal_collection << tuna

# As a developer, I can sort my collection of Animals based on age.
# Hint: Find out how the spaceship operator can help you with an array.

dog.add_one_year
dog.add_one_year
dog.add_one_year
dog.add_one_year
dog.add_one_year
dog.add_one_year
tuna.add_one_year
tuna.add_one_year
tuna.add_one_year
tuna.add_one_year

def age_sorter(array)
    array.sort { |a, b| a.age <=> b.age }
end
p age_sorter(animal_collection)

# As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.


