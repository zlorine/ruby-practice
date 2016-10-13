class ProgrammingLanguage
  attr_accessor :name, :age, :type

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end


end

  def array_printer(array)
  	array.each do |language|
  		puts "Language: #{language.name} | Age: #{language.age} | Type: #{language.type}"
  	end
  end


  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java] 

# array_printer(array_of_languages)

birthday = array_of_languages.map {|plus1| 
	plus1.age += 1
	plus1
}


#sort
sorted = array_of_languages.sort {|element1, element2| element2.age <=> element1.age}



#array_printer(birthday)




array_printer(sorted)
puts ""

#delete
nojava = array_of_languages.delete_if{|prog| prog.name.to_s == "Java"}

#array_printer array_of_languages

#shuffle
# sorted.shuffle!
# array_printer(sorted)


#take
array_young = sorted.reverse.take(3)

puts "the young languages are: \n \n"
array_printer(array_young)

#clear
array_young.clear
array_printer(array_young)

# old_young = nojava.combination(3).to_a 



# print old_young