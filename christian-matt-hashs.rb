# ❤️ Challenges


# As a developer, I can create a hash called my_phone using the Ruby method .new.
my_phone = Hash.new
p my_phone
# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:uber] = 'ride sharing app'
my_phone[:yelp] = 'review restaurants and company services ' 
my_phone[:spotify] = 'music app'
my_phone[:doordash] = 'food delivery'
my_phone[:tinder] = 'meet local sexy singles'
p my_phone
# As a developer, I can return a value from my_phone by passing in the name of a key.
p my_phone[:doordash]

# As a developer, I can update two keys in my_phone.
my_phone[:grubhub] = my_phone.delete(:doordash)
my_phone[:lyft] = my_phone.delete(:uber)
p my_phone

# As a developer, I can update two values in my_phone.
 my_phone[:doordash] = 'food'
 my_phone[:uber] = 'rides'
#  p my_phone

# As a developer, I can delete two key:value pairs from my_phone.
p my_phone.delete(:grubhub)
p my_phone.delete(:lyft)
p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phones applications.
def phone_apps hash
    hash.map do |key , value|
        "#{key} is  an app for #{value}"
    end 
end
p phone_apps my_phone
# 🏔 Stretch Goals


# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.
def phone_apps hash
    hash.map do |key , value|
        "#{key.capitalize()} is  an app for #{value}"
    end 
end
p phone_apps my_phone

# As a developer, I can create a custom method that takes in my_phone and returns an array with a sentence about the name of each app.
def phone_apps hash
    hash.map do |key , value|
        "#{key.capitalize()} is  an app for da da da ... #{value}"
    end 
end
p phone_apps my_phone