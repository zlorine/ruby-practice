#ALL IN ONE CLASS

# class Program

# 	def initialize
# 		@username = "lori"
# 		@password = "aRandomPassword"
# 		login
# 	end
		

# 	def login

# 			puts "Username:"
# 			username = gets.chomp

# 			puts "Password:"
# 			password = gets.chomp

# 			if username == @username && password == @password
# 				start
# 			else
# 				puts "Wrong username or password"
# 				login
# 			end

# 	end

# 	def start

# 		puts "Write a sentence"
# 		sentence = gets.chomp
# 		puts "There are" + sentence.size + "letters"

# 	end
# end

# Program.new

# 2 CLASSES!


# class Login

# 	def initialize
# 		@username = "lori"
# 		@password = "pass"
# 		login
# 	end

# 		def login

# 			puts "Username:"
# 			username = gets.chomp

# 			puts "Password:"
# 			password = gets.chomp

# 			if username == @username && password == @password
# 				Count.new
# 			else
# 				puts "Wrong username or password"
# 				login
# 			end


# 	end
# end



# #divided start and count for exercise'sake.

# class Count
# 	def initialize
# 		count
# 	end

# 	def count

# 		puts "Write a sentence"
# 		sentence = gets.chomp
# 		# puts "There are" + sentence.size + "letters"
# 		words = sentence.split(' ')
# 		puts "There are " + words.size.to_s + " words"

# 	end

# 	end

# Login.new


#VERSIÓN ALBERTO

class Login

	def initialize(username,password)
		@users = {:username => "lori", :password => "pass"} #harcoding for example sake
		@username = username
		@password = password
		login
	end

		def login

			if @users[:username] && @password == @users[:password]

				return true
				
			else
				puts "Wrong username or password"

				login
			end


	end
end


class Actions

	def initialize

		get_input

				if @action == "1"

			count

		elsif @action == "2"

				letters
		
				elsif @action == "3"

						reverse

					elsif @action == "4"

							uppercase


						elsif @action == "5"
								lowercase

							else 
								puts "What?"
					
		end


	end

def get_input

	puts "Write a sentence"
		@sentence = gets.chomp
		puts "What would you like to do? \n (1) Count words \n (2) Count letters \n (3) Reverse the text \n (4) Convert to uppercase \n (5) Convert to lowercase"
		@action=gets.chomp

	end



	def count

		words = @sentence.split(' ')
		puts "There are " + words.size.to_s + " words"

	end


	def letters

		words = @sentence
		puts "There are " + words.length.to_s + " letters including spaces"

	end

	def reverse

		puts @sentence.reverse		

	end	

	def uppercase

		puts @sentence.upcase

	end	

	def lowercase

		puts @sentence.downcase	

	end	

end


puts "Username:"
username = gets.chomp

puts "Password:"
password = gets.chomp

Actions.new


