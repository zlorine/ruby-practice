#I can't understand why it considers price to be = nil 

class Item 
	attr_reader :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      #Can't understand what to put in here, isn't price defined on line 7?
  end
end

class Houseware < Item
  def price
      if @price > 100
      	@price = @price - (@price / 100) * 5
      end
  end
end

class Fruit < Item
  def price
      if @day == "Saturday" || @day == "Sunday"
      	@price = @price - (@price / 100) * 10
      end	

	

  end
end

class ShoppingCart
  def initialize
    @items = []
    @day = Time.now.strftime("%A")
  end


  def add_item(item)
      @items.push(item)
  end

  def checkout
  	final_price = 0
  	@items.each do |item|
  		final_price += item.price
  	end
puts "the total price is" + final_price

  end

end

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
anchovies = Item.new("Anchovies", 2)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)

my_cart = ShoppingCart.new

my_cart.add_item(banana)
my_cart.add_item(vacuum_cleaner)
my_cart.add_item(anchovies)

puts banana.price

my_cart.checkout