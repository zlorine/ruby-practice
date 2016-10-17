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
  

    def get_input_move
        puts "Where would you like to go?"
        @input = gets.chomp
        if @position.exits.key?(@input)
           roomName = @position.exits[@input]
           room = @position.select {|selectedRoom| selectedRoom.name == roomName } 
           self.class.move(room)
           

        elsif 
           puts "You can't go in that direction"         
        end

        # puts @position.exits
    end

    def self.move(room)
        @position = room
        @position.each do |room|
        puts "You have entered the #{name} room. #{text}" 
        end
    end
 
    
    def no_command
        puts "Sorry, I don't understand that"
    end


    def where
        puts @position.name
        # @position.each do |room|
        #     print room.exits
        # end
    end

    def minusOne
        @lifes = @lifes - 1
    end

    def dies
        puts "aaaaaand you die. Sorry dude."
        exit #find the method to end the game
    end


end



class Room
    attr_accessor :name, :exits, :text
    
    def initialize(name,exits,text="")
        @name = name
        @exits = exits
        @text = text
    end

end


round = GameofRooms.new

puts round.where
round.get_input_move
# puts round.where