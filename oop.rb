# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class UnicornClass
    attr_reader :name, :color 

    def initialize(name)
        @name = name
        @color = "silver"
    end

    def say(words)
        "*~* #{words} *~*"
    end
end

char1 = UnicornClass.new("Buttercup")
puts char1
puts char1.say("Hello there!")



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class VampireClass
    attr_reader :name, :pet, :thirsty 

    def initialize(name)
        @name = name
        @pet = "bat"
        @thirsty = true
    end

    def change_pet(new_pet)
        @pet = new_pet
    end

    def drink
        @thirsty = false
    end
end

puts VampireClass.drink



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class DragonClass
    attr_reader :name, :rider, :color, :is_hungry
   
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat(eat)
        @is_hungry = false
    end
end



#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class HobbitClass
    attr_reader :name, :dispo, :age, :is_adult, :is_old, :has_ring
   
    def initialize(name, dispo)
        @name = name
        @dispo = dispo
        @age = 0
        if age >=33
            @is_adult = true
        else
            @is_adult = false
        end
        if age >= 101
            @is_old = true
        else
            @is_old = false
        end
        if name == "Frodo"
            @has_ring = true
        else
            @has_ring = false
        end
        
        def celebrate_birthday
            age = age + 1
        end
    end
end
