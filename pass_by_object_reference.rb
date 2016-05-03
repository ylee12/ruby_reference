def change(a)
	a = 'm'
	p "Inside change, a is #{a}"
	a
end

b = '2'
p b 
p b.object_id()

puts change(b)
p "After change, b is #{b}"
c = change(b)
p c 
p c.object_id

puts "\n\nRound 2"

def change_2(param)
	param[0] = 'a'
	param
end

b = '4'
p b 
p b.object_id()

puts change_2(b)
p "After change, b is #{b}"


#=============================================

puts "\n\nRound 3"

# http://blog.khd.me/ruby/c-passes-by-reference-java-and-ruby-dont/

class Point

  attr_accessor :x, :y

  def initialize(x,y)
    @x,@y = x,y
  end
 
  def to_s
    "x = #{@x} , y = #{@y}"
  end
end
 
def swap(p1,p2)
  p1,p2 = p2,p1
end
 
#initializing the points
var1 = Point.new(5,10)
var2 = Point.new(20,40)
#printing their values
puts "Before Passing" , var1, var2
# //swaping, passing by reference value, aka: pass by value
swap var1,var2
#printing the values again
puts "After Passing" , var1, var2

# Round 3
# Before Passing
# x = 5 , y = 10
# x = 20 , y = 40
# After Passing
# x = 5 , y = 10
# x = 20 , y = 40


#=================================


puts "\n\nRound 4"

# http://blog.khd.me/ruby/c-passes-by-reference-java-and-ruby-dont/

class Point

  def initialize(x,y)
    @x,@y = x,y
  end
 
  def to_s
    "x = #{@x} , y = #{@y}"
  end
end
 
# Ruby passes variable(s) by copy(ies) of the referenced object(s)
def swap_fix_it(p1, p2)

  p1_copy = p1.dup
  
  p1.x = p2.x
  p1.y = p2.y

  p2.x = p1_copy.x
  p2.y = p1_copy.y

  p "Inside swap_fix_it p1 is #{p1}"
  p "Inside swap_fix_it p2 is #{p2}"

  	
end
 
#initializing the points
var1 = Point.new(5,10)
var2 = Point.new(20,40)
#printing their values
puts "Before Passing" , var1, var2
# //swaping, passing by reference value, aka: pass by value
swap_fix_it var1,var2
#printing the values again
puts "After Passing" , var1, var2
