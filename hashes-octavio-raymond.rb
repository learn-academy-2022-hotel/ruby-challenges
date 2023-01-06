# ❤️ Challenges
# As a developer, I can create a hash called my_phone using the Ruby method .new.
my_phone = Hash.new

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:spotify] = "music player"
my_phone[:maps] = "navigating instructions"
my_phone[:duoling] = "learn new languages"
my_phone[:whatsapp] = "interactive messaging"
my_phone[:instagram] = "social media app"
# p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.
# p my_phone[:spotify]

# As a developer, I can update two keys in my_phone.
my_phone[:itunes] = my_phone.delete(:spotify)
my_phone[:duolingo] = my_phone.delete(:duoling)
# p my_phone

# As a developer, I can update two values in my_phone.
my_phone[:itunes] = "music and podcast player"
my_phone[:maps] = "navigating instructions with street view"
# p my_phone

# As a developer, I can delete two key:value pairs from my_phone.
my_phone.delete(:duolingo)
my_phone.delete(:instagram)
# p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.
my_phone.each do |key, value|
    # p "#{key} is a #{value} app"
end

# 🏔 Stretch Goals
# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.
def app_info(app_list)
    app_list.each do |key, value|
        p "#{key.capitalize} is a #{value} app"
    end
end
# app_info(my_phone) # Itunes - music and podcast app

# As a developer, I can create a custom method that takes in my_phone and returns an array with a sentence about the name of each app.
def app_name_info(app_list)
    app_list.each do |key, value|
        app_list[key] = "#{key} is the name of the app"
    end
end

descriptions = app_name_info(my_phone).values
p descriptions # ["maps is the name of the app", "whatsapp is the name of the app", "itunes is the name of the app"]