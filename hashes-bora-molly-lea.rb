# ❤️ Challenges
# As a developer, I can create a hash called my_phone using the Ruby method .new.
my_phone = Hash.new 
# p my_phone

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
# my_phone = {
#     'tiktok'=> 'short video creation service and web community',
#     'slack'=> 'messaging app for enterprises/companies and virtual office space',
#     'google maps'=> 'gives directions',
#     'twitter'=> 'news and idea sharing app', 
#     'snapchat'=> 'short photo and video messaging app'
# }
my_phone[:tiktok] = 'short video creation service and web community'
my_phone[:slack] = 'messaging app for enterprises/companies and virtual office space'
my_phone[:google_maps] = 'gives directions'
my_phone[:twitter] = 'news and idea sharing app'
my_phone[:snapchat] = 'short photo and video messaging app'
# p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.
# p my_phone [:slack]

# As a developer, I can update two keys in my_phone.
# my_phone[:snap_chat] = my_phone.delete(:snapchat)
# my_phone[:googlemaps] = my_phone.delete(:google_maps)
# p my_phone

# As a developer, I can update two values in my_phone.
# my_phone[:snapchat] = 'dying'
# my_phone[:tiktok] = 'thriving'
# p my_phone


# As a developer, I can delete two key:value pairs from my_phone.
# my_phone.delete(:snapchat)
# my_phone.delete(:slack)
# p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.
# my_phone.each do | key, value |
#     p "#{key} app that #{value}"
# end


# 🏔 Stretch Goals
# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.
# my_phone.each do |key, value|
#     p "#{key.capitalize} is an app for #{value}"
# end

# As a developer, I can create a custom method that takes in my_phone and returns an array with a sentence about the name of each app.
# def cool_app hash
#     hash.map do | key, value |
#         "#{key.capitalize}-#{value}"
#     end
# end
# p cool_app(my_phone)
