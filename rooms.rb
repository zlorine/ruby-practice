class GameofRooms
attr_accessor :position

        def initialize

            @rooms = [ 
                Room.new("Red",{"s" => "Green", "e" => "Blue"},"it's a red room"),
                Room.new("Blue",{"w" => "Red", "e" => "Patio", "s" => "Yellow"},"it's a blue room"),
                Room.new("Yellow",{"e" => "Patio", "n" => "Blue", "w" => "Green"},"it's a yellow room"),
                Room.new("Green",{"n" => "Red", "e" => "Yellow"},"it's a green room"),
                Room.new("Patio",{"s" => "Green", "w" => "Blue"},"lovely garden")
            ]

            @position = @rooms[0]    

        end



    def move(room)
        @position = room
        each room do |room|
        puts "You have entered the #{name} room. #{text}" 
        end
    end   

    def enterRoom(room)
        
    end

    def leaveRoom

    end



    def no_door
        puts "You can't go in that direction"
    end
    
    def no_command
        puts "Sorry, I don't understand that"
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
    endz

end



class Room
    attr_accessor :name, :exits, :text
    
    def initialize(name,exits,text="")
        @name = name
        @text = text
    end

end


round = GameofRooms.new

puts round.position.name