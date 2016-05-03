
p 1.hash
p "Hello".hash
p "Hello".hash
p [1,2,3].hash
p({:x => 1, :y => 2}.hash)

class Item
  def initialize(name)
    @name = name
  end
end

p Item.new("ruby").hash

puts "Print its Object Ids"
p "Hello".object_id
p "Hello".object_id
    
# [ylee@ylee-asus ruby_exercise]$ ruby hash_code.rb 
# 3952053971001726770
# 4033578264816022130
# 4033578264816022130
# 3576750682445952357
# 1217025093918195561
# 594582041638616982
# Print its Object Ids
# 14902720
# 14902620


#==============================================================

puts "\n\nSecond example: "

class Item
  attr_reader :item_name, :qty
  
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
  
  def to_s
    "Item (#{@item_name}, #{@qty})"
  end
  
  def hash
    
    # Bitwise Exclusive OR
    self.item_name.hash ^ self.qty.hash
  end

  def eql?(other_item)
    puts "#eql? invoked"
    @item_name == other_item.item_name && @qty == other_item.qty
  end

def ==(other_item)

	return eql?(other_item)
	
end

  
end

p Item.new("abcd", 1).hash
p Item.new("abcd", 1).hash

items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
items_2 = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]

p "Uniq item(s): #{items.uniq}"
p items.uniq.size

puts items == items_2
puts "Are they eql? #{items.eql? items_2}"


# Second example: 
# 2857776704086737926
# 2857776704086737926
# #eql? invoked
# #eql? invoked
# "Uniq item(s): [#<Item:0x0000000153eb38 @item_name=\"abcd\", @qty=1>]"
# #eql? invoked
# #eql? invoked
# 1
# true
# #eql? invoked
# #eql? invoked
# #eql? invoked
# Are they == true
# [ylee@ylee-asus ruby_exercise]$# 

