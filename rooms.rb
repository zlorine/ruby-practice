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
             
        end


    def startGame
    
     @lifes = 3
     @position = @rooms[0]  
     puts "********A WEIRD, WEIRD HOUSE********** \n \n"
     puts "Hi Dylan. You are in a big house full of traps. Try to make out of it alive."
     puts "__________________________________ \n \n"
     puts "There are a few actions that you can perform. You can 'move' to change room. The directions you can go to are North (n), South (s), East (e) or West (w),
     but beware! In this house every room has four doors, and some walls are very dangerous. \n In every room you can jump, dig, explore or speak with its inhabitants, if there is any. \n As every regular human being, you have 3 lives to start with. And as usual, you can lose them or gain them. \n Well Dylan, time to leave this house!"
      puts "__________________________________ \n \n"
     puts @position.text
     get_input

    end   


    def get_input

            puts "What would you like to do?"
            @input = gets.chomp

            if @input == "die"
                dies
            elsif 
                @input == "move"
                get_input_move
             elsif 
                @input == "where"
                where
                get_input
            elsif 
                @input == "exit"
                puts "YOU'VE WON!!! \n \n Just jokin'. There's only one way to leave. Well, two ways. "
                get_input
                else 
                roomActions            
            end



    end

    def roomActions

        # if @position.name == "Red"

        #     if @input == "jump"
        #         puts "I might have omitted that there is a very low ceiling. You knock your head hard. Sorry"
        #         minusOne
        #         puts "Lives left: #{@lifes}"
        #         get_input
        #     end

        if @input == "jump"

            if @position.name == "Red" || @position.name == "Yellow"
                puts "I might have omitted that there is a very low ceiling. You knock your head hard. Sorry"
                minusOne
                puts "Lives left: #{@lifes}"
                get_input
                elsif @position.name == "Blue"
                    puts "What's that weird piece of rock hanging there? You jump and smash it with your fist, and a weird green mushroom comes out
                    \n It's start running all over the place, but you catch it and eat it. You feel invigorated."
                    plusOne
                    puts "Lives left: #{@lifes}"
                    get_input

                elsif @position.name == "Patio"
                    puts "You jump on a tree and have a look around. You see that there is a road on the other side of the outer wall to the east, but you definitely can't jump from there, so you go back to the ground."
                    get_input
                elsif @position.name == "Green"
                    noCommand
               
                else

                    noCommand
            
            end


#add elsif actions



        else
            noCommand


       end
   end


    def get_input_move
        puts "Where would you like to go?"
        @inputMove = gets.chomp
        if @position.exits.key?(@inputMove)
           roomName = @position.exits[@inputMove]
           room = @rooms.find {|selectedRoom| selectedRoom.name == roomName } 
           move(room)
           

        elsif 
          noWay
         
        end


    end
 

    def move(room)
        
        @position = room
        puts @position.text
        get_input
        # puts "You have entered the #{name} room. #{text}" 
        
    end 

    def noWay
        puts "You can't go in that direction"  
        get_input_move
    end    

    def noCommand
        puts "Nothing happens"
        get_input
    end


    def where
        puts @position.text
        get_input
    end

    def minusOne
        @lifes = @lifes - 1
        if @lifes == 0
            dies
        end
    end

    def plusOne
        
        if @lifes < 3
        @lifes = @lifes + 1
        else
        puts "but everybody knows one can't have more then 3 lives. It's basic medicine."
    end
    end

    def dies
        puts "aaaaaand you die. Sorry dude."
        exit 
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
round.startGame
# puts round.where
# round.get_input_move
puts round.where