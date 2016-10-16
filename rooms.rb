class Room
    attr_reader :name
    
    def initialize(name,possible_directions)
        @name = name
        @possible_directions = []
    end


    def no_door
        puts "You can't go in that direction"
    end
    
    def no_command
        puts "Sorry, I don't understand that"
    end

    def describeRoom(roomDescription)
        @roomDescription = roomDescription
    end

    def enterRoom(room)
        puts "You have entered the #{name} room." 
        puts @roomDescription
    end

    def leaveRoom

    end


end

class RedRoom < Room


    end

class Dylan
attr_reader :position
    
    def initialize
        @position = "red_room"
        @lifes = 3
        puts "Hi Dylan. You are in the red room"

    end

    def where
        puts @position.name
    end

    def minusOne
        @lifes = @lifes - 1
    end

    def dies
        puts "aaaaaand you die. Sorry dude."
        exit #find the method to end the game
    end

    def move(room)
        @position = room
        room.enterRoom(room)
    end    

end




red_room = Room.new("Red",["e", "s"])
blue_room = Room.new("Blue",["e", "s", "w"])
yellow_room = Room.new("Yellow",["e", "n", "w"])
green_room = Room.new("Green",["e", "n"])
open_room = Room.new("Patio",["s", "w"])

blue_room.describeRoom("It's a very nice room")

dylan = Dylan.new

dylan.move(blue_room)
puts dylan.where