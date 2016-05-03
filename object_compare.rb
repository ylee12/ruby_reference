
# implement ==, eql? and hash for object comparison

class Item

  attr_accessor :item_name, :quantity, :supplier_name, :price

  def initialize(item_name, quantity, supplier_name, price)
    @item_name = item_name
    @quantity = quantity
    @supplier_name = supplier_name
    @price = price
  end 
  
  def ==(other)

  	eql?(other)

  end

  def eql?(other)

  	@item_name == other.item_name && @quantity == other.quantity && @supplier_name == other.supplier_name && @price == other.price
  	
  end

  def hash

  	@item_name.hash ^ @quantity.hash ^ @supplier_name.hash ^ @price.hash
  	
  end
  
  
end


item_1 = Item.new("Optical mouse", 5, "HP", 87.45)
item_2 = Item.new("books", 56, "HPP", 387.45)
item_3 = Item.new("Optical mouse", 5, "HP", 87.45)
item_4 = Item.new("computer", 5, "HP", 87.45)

ar = [item_1, item_2, item_3, item_4]

puts "Number of unique item in ar is #{ar.uniq.size}."

puts item_1 == item_3
puts item_2 == item_3
puts item_1.eql? item_3
puts item_2.eql? item_3

# [ylee@ylee-asus ruby_exercise]$ ruby object_compare.rb 
# Number of unique item in ar is 3.
# true
# false
# true
# false
# [ylee@ylee-asus ruby_exercise]$# 


#================================================