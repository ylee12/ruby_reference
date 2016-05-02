module Perimeter
  class Array
    def initialize
      @size = 400
    end
  end
end

our_array = Perimeter::Array.new
ruby_array = Array.new

p our_array.class
p ruby_array.class

#ylee@ylee-hp-6200:~/pj/ruby_exercise$ ruby class_in_module.rb
#Perimeter::Array
#Array
