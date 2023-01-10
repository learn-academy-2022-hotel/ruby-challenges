# As a developer, I can make a generic Animal class.

# class Animal
# end

# As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.

# class Animal
#     attr_accessor :alive
#     def initialize()
#         @alive = true
#     end
# end

# As a developer, I can give my Animal an age of 0 upon initialization.

# class Animal
#     attr_accessor :alive, :age
#     def initialize(age)
#         @alive = true
#         @age = 0
#     end
# end

# As a developer, I can age my Animal up one year at a time.

# class Animal
#     attr_accessor :age, :alive
#     def initialize(age)
#         @age = 0
#         @alive = true
#     end
#     def age_up
#         @age += 1
#     end
# end

# As a developer, I can return my Animal's age, as well as if they're alive.
# Hint: Use attr_accessor as well as an initialize method.

class Animal
    attr_accessor :age, :alive
    def initialize(age)
        @age = 0
        @alive = true
    end
    def age_up
        @age += 1
    end
end
first_animal = Animal.new(0)
first_animal.age_up
p first_animal

# As a developer, I can create a Fish that inherits from Animal.

# class Fish < Animal
# end

# As a developer, I can initialize all of my fish to be cold_blooded. (Yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that.)

class Fish < Animal
    def initialize(age_parameter)
        super(age_parameter)
        @cold_blooded = true
    end
end

# As a developer, I can create a Salmon that inherits from Fish.

# class Salmon < Fish
#     def initialize(cold_blooded_parameter)
#         super(cold_blooded_parameter)
#     end
# end

# As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).

# class Salmon < Fish
#     def initialize(cold_blooded_parameter)
#         super(cold_blooded_parameter)
#         @species = species
#     end
# end

# As a developer, I can see that my Salmon is cold-blooded.

class Salmon < Fish
    def initialize(cold_blooded_parameter)
        super(cold_blooded_parameter)
        @species = species
    end
end
our_salmon = Salmon.new('Sockeye')
p our_salmon
# #<Animal:0x00007fab33855f30 @age=1, @alive=true>
# inheritance-moss-torin.rb:91:in `initialize': undefined local variable or method `species' for #<Salmon:0x00007fab33855b48 @age=0, @alive=true, @cold_blooded=true> (NameError)
# Did you mean?  species_name
# 	from inheritance-moss-torin.rb:97:in `new'
# 	from inheritance-moss-torin.rb:97:in `<main>'

# class Salmon < Fish
#     def initialize(species)
#         @species = species
#     end
# end
# our_salmon = Salmon.new('Sockeye')
# p our_salmon.species_name
# output: 



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


# As a developer, I can see a message that tells me all of my new Mammal's information.