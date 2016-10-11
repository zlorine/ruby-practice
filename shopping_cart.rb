#I can't understand why it considers price to be = nil 

class Item 
	attr_accessor :price, :name
  def initialize(name, price)
      @name = name
      @price = price
      @day = Time.now.strftime("%A")
  end

  def price
      @price      
  end
  

end

class Houseware < Item
  def price
      if @price > 100
      	@price = @price - (@price / 100) * 5
      else 
        @price
      end
  end
end

class Fruit < Item
  def price
      if @day == "Saturday" || @day == "Sunday"
      	@price = @price - (@price / 100) * 10
      else 
        @price
      end
  end
end

class ShoppingCart
  attr_reader :items
  def initialize
    @items = []
  end


  def add_item(item)
      @items.push(item)
  end

 def checkout
    final_price = 0


    @items.each do |item|

# eliminates the anchovies for whatever reason
#    puts "#{item.name} costs #{item.price}$"

      final_price += item.price

    end
    puts "the total price is " + final_price.to_s
  end

  end

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
anchovies = Item.new("Anchovies", 2)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
peach = Fruit.new("peach", 5)

my_cart = ShoppingCart.new


my_cart.add_item(vacuum_cleaner)
my_cart.add_item(anchovies)
my_cart.add_item(banana)
my_cart.add_item(peach)


my_cart.checkout
