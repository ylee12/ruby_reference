
class Array
  def reverse_iterate
    if block_given?
      new_array=[]
      current_index = self.size-1
      while current_index >= 0
        new_array << yield(self[current_index])
        current_index -= 1
      end
    else
      print self.reverse
    end
    new_array
  end
end

EXPRESSION = "FUNNY"
ar1 = %W(this is a #{EXPRESSION} joke and i love it).reverse_iterate { |i|  i}
puts "My array 1 is #{ar1.inspect}." 

ar2 = %W(this is a #{EXPRESSION} joke and i love it).reverse_iterate { |i|  i + "_#{EXPRESSION}"}
puts "My array 2 is #{ar2.inspect}."

ar3 = %W(this is a #{EXPRESSION} joke and i love it).reverse_iterate
puts "My array 3 is #{ar3.inspect}."
