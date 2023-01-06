# Challenges

# As a developer, I can create a hash called my_phone using the Ruby method .new.

my_phone = Hash.new
p my_phone
# output: {}

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.

my_phone[:maps] = "GPS Navigation"
my_phone[:gmail] = "Google E-Mail"
my_phone[:tinder] = "Dating App"
my_phone[:tetris] = "Game"
my_phone[:youtube] = "YouTube Videos"

# p my_phone
# output: {:maps=>"GPS Navigation", :gmail=>"Google E-Mail", :tinder=>"Dating App", :tetris=>"Game", :youtube=>"YouTube Videos"}

# As a developer, I can return a value from my_phone by passing in the name of a key.

# p my_phone[:tetris]
#  output: "Game"

# As a developer, I can update two keys in my_phone.

my_phone[:solitaire] = my_phone.delete(:tetris)
my_phone[:bumble] = my_phone.delete(:tinder)
# p my_phone
# output: {:maps=>"GPS Navigation", :gmail=>"Google E-Mail", :youtube=>"YouTube Videos", :solitaire=>"Game", :bumble=>"Dating App"}

# As a developer, I can update two values in my_phone.

my_phone[:maps] = "GPS Navigation Software"
my_phone[:gmail] = "Google Branded Email"
# p my_phone
# output: {:maps=>"GPS Navigation Software", :gmail=>"Google Branded Email", :youtube=>"YouTube Videos", :solitaire=>"Game", :bumble=>"Dating App"}

# As a developer, I can delete two key:value pairs from my_phone.

my_phone.delete(:bumble)
my_phone.delete(:youtube)
# p my_phone
# output: {:maps=>"GPS Navigation Software", :gmail=>"Google Branded Email", :solitaire=>"Game"}

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.

# my_phone.each do |key, value|
    # p "#{key} is used for #{value}."
# end
# # output:
# "maps is used for GPS Navigation Software."
# "gmail is used for Google Branded Email."
# "solitaire is used for Game."

# 🏔 Stretch Goals

# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.

def my_new_phone hash
    hash.map do |key, value|
        "#{key.capitalize} is used for #{value}."
    end
end

p my_new_phone my_phone
# output: ["Maps is used for GPS Navigation Software.", "Gmail is used for Google Branded Email.", "Solitaire is used for Game."]

# As a developer, I can create a custom method that takes in my_phone and returns an array with a sentence about the name of each app.

def phone_apps_usage hash
    hash.map do |key, value|
        "#{key.capitalize} is used for #{value}."
    end
end

p my_new_phone my_phone
# output: ["Maps is used for GPS Navigation Software.", "Gmail is used for Google Branded Email.", "Solitaire is used for Game."]