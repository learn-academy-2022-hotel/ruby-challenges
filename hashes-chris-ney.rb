# As a developer, I can create a hash called my_phone using the Ruby method .new.
my_phone = Hash.new
p my_phone

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:zoom] = "a virtual meeting site"
my_phone[:tinder] = "a dating website"
my_phone[:venmo] = "a way to send money to people easily"
my_phone[:discord] = "a online comunication platform"
my_phone[:slack] ="a online platform used by devolpers to communicate"


p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.
 p my_phone[:tinder]

# As a developer, I can update two keys in my_phone.
my_phone[:zooom] = my_phone.delete(:zoom)
my_phone[:sslack] = my_phone.delete(:slack)
p my_phone
# As a developer, I can update two values in my_phone.
my_phone[:zooom] = "look a extra o"
my_phone[:sslack] = "another s is added"

p my_phone
# As a developer, I can delete two key:value pairs from my_phone.
my_phone.delete(:zooom)
my_phone.delete(:sslack)
p my_phone


# As a developer, I can use an enumerable method to return information about all of my_phone's applications.



my_phone.map do |key,value| 
p "the app #{key} is #{value}"
end


# 🏔 Stretch Goals

# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.
def capitalized hash
    hash.map do |key,value|
        "the app #{key.capitalize} is #{value}"
    end
end

p capitalized(my_phone)



# As a developer, I can create a custom method that takes in my_phone and returns an array with a sentence about the name of each app.

def capitalized hash
    hash.map do |key,value|
        "the app #{key.capitalize} is called #{key.capitalize} because they said so..."
    end
end

p capitalized(my_phone)
