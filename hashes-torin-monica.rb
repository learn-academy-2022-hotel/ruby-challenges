# ❤️ Challenges
# As a developer, I can create a hash called my_phone using the Ruby method .new.
my_phone = Hash.new

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:slack] = 'Communicate with other developers'
my_phone[:github] = 'Share code'
my_phone[:camera] = 'Takes fabulous pictures'
my_phone[:instagram] = 'Watching reels'
my_phone[:messaging] = 'Stay in touch with loved ones'
# p my_phone
# Output: {:slack=>"Communicate with other developers", :github=>"Share code", :camera=>"Takes fabulous pictures", :instagram=>"Watching reels", :messaging=>"Stay in touch with loved ones"}

# As a developer, I can return a value from my_phone by passing in the name of a key.
# p my_phone[:camera]
# Output: "Takes fabulous pictures"

# As a developer, I can update two keys in my_phone.
my_phone[:texting] = my_phone.delete(:messaging)
my_phone[:discord] = my_phone.delete(:slack)
# p my_phone
# {:github=>"Share code", :camera=>"Takes fabulous pictures", :instagram=>"Watching reels", :texting=>"Stay in touch with loved ones", :discord=>"Communicate with other developers"}

# As a developer, I can update two values in my_phone.
my_phone[:github] = 'Post personal projects'
my_phone[:instagram] = 'Watch endlessly'

# p my_phone
#Output: {:slack=>"Communicate with other developers", :github=>"Post personal projects", :camera=>"Takes fabulous pictures", :instagram=>"Watch endlessly", :messaging=>"Stay in touch with loved ones"}

# As a developer, I can delete two key:value pairs from my_phone.

my_phone.delete(:texting)
my_phone.delete(:instagram)
# p my_phone
# Output: {:github=>"Post personal projects", :camera=>"Takes fabulous pictures", :discord=>"Communicate with other developers"}

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.

my_phone.each do |key, value|
  p "#{key} is used for #{value}"
end
#Output: "github is used for Post personal projects"
# "camera is used for Takes fabulous pictures"
# "discord is used for Communicate with other developers"

my_phone.map do |key, value|
  p "#{key} is often used for #{value} when you're bored."
end
# Output: "github is often used for Post personal projects when you're bored."
# "camera is often used for Takes fabulous pictures when you're bored."
# "discord is often used for Communicate with other developers when you're bored."

new_iphone = my_phone.map do |key, value|
  p "#{key} is often used for #{value} when you're bored."
end
# p new_iphone
# Output: ["github is often used for Post personal projects when you're bored.", "camera is often used for Takes fabulous pictures when you're bored.", "discord is often used for Communicate with other developers when you're bored."]

# Create a method to iterate across the hash
def mobile_device hash
  hash.map do |key, value|
    "#{key} takes my time #{value}"
  end
end

p mobile_device my_phone
# Output: ["github takes my time Post personal projects", "camera takes my time Takes fabulous pictures", "discord takes my time Communicate with other developers"]