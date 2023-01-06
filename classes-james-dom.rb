class Task
    def initialize(title)
        @title = title
        @completion_status = 'incomplete'
    end
    def get_title
        @title
    end
    def get_completion_status
        @completion_status
    end
    def completed
        @completion_status = 'complete'
    end
end

# yard_work = Task.new('Yard Work')
# dishes = Task.new('Dishes')
# cooking = Task.new('Cooking')

# p yard_work.get_title
# p dishes.get_title
# p cooking.get_title

p yard_work.get_completion_status
yard_work.completed
p yard_work.get_completion_status


class ColorPalette
    attr_accessor :palette_color, :variant_one, :variant_two, :variant_three
    def initialize(palette_color, variant_one, variant_two, variant_three)
        @palette_color = palette_color
        @variant_one = variant_one
        @variant_two = variant_two
        @variant_three = variant_three
    end
    def all_colors
        "Three variants of #{palette_color} are #{variant_one}, #{variant_two}, and #{variant_three}."
    end
end

red = ColorPalette.new('Red', 'Brick Red', 'Crimson', 'Burgandy')
blue = ColorPalette.new('Blue', 'Sky Blue', 'Navy Blue', 'Baby Blue')
purple = ColorPalette.new('Purple', 'Violet', 'Mauve', 'Orchid')

# p red.variant_one
# p blue.variant_two
# p purple.variant_three

# p red.all_colors
p red.variant_one
red.variant_one = 'Blood Red'
p red.variant_one
