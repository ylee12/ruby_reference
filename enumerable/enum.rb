
#Author: Yong Lee
#Description: Demo use of Enumerable with custom class

class Mycolors

	include Enumerable

	attr_accessor :colors


	def initialize(colors)
		@colors = colors

	end

	def each

        # call the block with each element in the colors array
		@colors.each { |i| yield i}
	end

end


c = Mycolors.new(%w(yellow, white, black, green, purple))

c.inspect
puts c.class

c.each {|i| print i.upcase + " "}
#YELLOW, WHITE, BLACK, GREEN, PURPLE

puts

a = c.map {|i| i.upcase}
puts a.class

a.each {|i| print i + " "}
#YELLOW, WHITE, BLACK, GREEN, PURPLE 


########
# program output
# [ylee@ylee-asus enumerable]$ ruby enum.rb 
# Mycolors
# YELLOW, WHITE, BLACK, GREEN, PURPLE 
# Array
# YELLOW, WHITE, BLACK, GREEN, PURPLE 