class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Lorenzo's place", "Bologna", 8, 55),
  Home.new("Giovanni's place", "Bologna", 2, 50),
  Home.new("Ariadna's place", "Barcelona", 6, 65),
  Home.new("Ollie's place", "Londres", 4, 40),
  Home.new("Stefano's place", "Bruselas", 4, 33),
  Home.new("Anna's place", "Madrid", 5, 54)
]

# homes.each do |hm|
#   puts "#{hm.name}'s place in #{hm.city} \nPrice: $#{hm.price} per night\n\n"
# end

# prices = homes.map do |pr|
#       pr.price
#     end

# total_price = 0.0
# prices.each do |pr|
#   total_price = total_price + pr
# end

# puts total_price

# average_price = total_price / prices.length

# puts average_price

# total_price = homes.reduce(0.0) do |sum, hm|
#   sum + hm.price
# end
# print "The average price is: "
# puts total_price / homes.length


# # Homes with capacity 4 or more
# high_capacity_homes = homes.select do |hm|
#   # Keep hm only if its capacity is 4 or greater
#   hm.capacity >= 4

# end

# high_capacity_homes.each do |hm|
#   puts hm.name
# end

# high_capacity_homes


sorted = homes.sort do |home1, home2|
  # Compare the two homes by their capacity
  home1.price <=> home2.price
end

puts "Here you can read the list of houses from the cheapest to the most expensive \n\n"

sorted.each do |price_sorted|
puts "#{price_sorted.name}, #{price_sorted.price}$"
end

total_price = homes.reduce(0.0) do |sum, hm|
  sum + hm.price
end
print "The average price is: "
puts total_price / homes.length

puts "Would you like to sort them from the most expensive to the least expensive? (Y/N) \n\n"
question_price = gets.chomp
  if question_price == "Y" || question_price == "y" || question_price == "yes"

      sortedtolow = homes.sort do |home1, home2|
      # Compare the two homes by their capacity
      home2.price <=> home1.price

      end

      sortedtolow.each do |price_sorted|
      puts "#{price_sorted.name}, #{price_sorted.price}$"
    
    end

  elsif question_price == "N" || question_price == "n" || question_price == "no"

    puts "Okay,"

  else 

    puts "I.. what? Please write Y or N"

  end

puts "Would you like to order the list by accomodation's capacity? (Y/N)"

question_capacity = gets.chomp
  if question_capacity == "Y" || question_capacity == "y" || question_capacity == "yes"


      sorted_cap = homes.sort do |home1, home2|
      # Compare the two homes by their capacity
      home2.capacity <=> home1.capacity

      end

      sorted_cap.each do |cap_sorted|
      puts "#{cap_sorted.name}, up to #{cap_sorted.capacity} people"
    
    end

  elsif question_capacity == "N" || question_capacity == "n" || question_capacity == "no"

    puts "Sweet"

  else 

    puts "Please write Y or N"

  end


cities = homes.map do |home|
  home.city
end

  puts "In which city are you looking for accomodation?" + cities.to_s

  selected_city = gets.chomp

selected_cities = homes.select do |home|
  home.city == selected_city
end

selected_homes = selected_cities.map do |home|
  home.name
end


puts selected_homes



