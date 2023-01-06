# Challenges
# As a developer, I can create a hash called my_phone using the Ruby method .new.

my_phone = Hash.new 
p my_phone 

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:itunes]='music'
my_phone[:amazon]='shopping'
my_phone[:doordash]='eating'
my_phone[:youtube]='videos'
my_phone[:app_store]='games'

p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.
p my_phone[:amazon]

# As a developer, I can update two keys in my_phone.
my_phone[:grubhub]= my_phone.delete(:doordash)

p my_phone

# As a developer, I can update two values in my_phone.
my_phone[:grubhub]='food'
my_phone[:amazon]='groceries'

p my_phone

# As a developer, I can delete two key:value pairs from my_phone.
my_phone.delete(:app_store)
my_phone.delete(:youtube)
p my_phone 

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.

my_phone.each do |key, value|
    p "My phone has #{key} for #{value}."
end 