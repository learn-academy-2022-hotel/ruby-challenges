

my_phone = Hash.new

my_phone[:make] = "Cool Phone"
my_phone[:model] = "Extra Cool"
my_phone[:camera] = "10,000 MP"
my_phone[:screen_size] = "55 in"
my_phone[:battery_size] = "10,000 GWh"

p my_phone

p my_phone[:screen_size]

my_phone[:camera_type] = my_phone.delete(:camera)
my_phone[:model_name] = my_phone.delete(:model)

p my_phone[:camera_type]
p my_phone[:model_name]

my_phone[:screen_size] = "74 in"
my_phone[:camera_type] = "Polaroid"

p my_phone[:screen_size]
p my_phone[:camera_type]

my_phone.delete(:battery_size)
my_phone.delete(:camera_type)

p my_phone

my_phone.each do |key, value|
    p "My phone has a #{key} of #{value}. It's terrible."
end

def phone_upcase hash
    hash.map do |key, value|
       value.upcase
    end
end

p phone_upcase my_phone

def phone_sentence hash
    hash.map do |key ,value|
        "It's not a name, but #{value} sure is great."
    end
end

p phone_sentence my_phone
