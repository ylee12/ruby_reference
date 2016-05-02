
#open a class Array and add my my own method

class Array

  # given an array, delete the element(s) from the array if the element(s) match
  # the condition in a given block.
  # return a new array with elements that do not match the condition in the given block 
  def my_delete_if

    new_array = []

    #puts "Entering my_delete_if function ....."
    self.each do |i|

      #puts "Inside function, i is #{i}"
      b = yield(i)

      #puts "b return is #{b}"

      #note: for string matching, b will be not nil if a match is found
      # first comparision takes care of string
      # second comparison takes care of numeric
      new_array << i unless (b && (b == true || b >= 0))
      #new_array << i unless (b != nil) or (b == true)
      
    end

    return new_array
  end


  def my_delete_if!

    a_copy = self.dup

    #puts "Entering my_delete_if function ....."
    a_copy.each do |i|

      #puts "Inside function, i is #{i}"
      b = yield(i)

      #puts "b return is #{b}"

      #note: for string matching, b will be not nil if a match is found
      # first comparision takes care of string
      # second comparison takes care of numeric
      self.delete(i) if (b && (b == true || b >= 0))
            
    end

    return self
  end

end


# delete the element from the array if it is less than 3
a = [1, 2, 3, 4, 5, 6].my_delete_if { |i| i < 3}
puts "\na is #{a.inspect}"

# delete the element from the array if it is <= 3
a = [1, 2, 3, 4, 5, 6].my_delete_if { |i| i <= 3}
puts "\na is #{a.inspect}"

# delete the element from the array if it is >= 3
a = [1, 2, 3, 4, 5, 6].my_delete_if { |i| i >= 3}
puts "\na is #{a.inspect}"

# remove the element from the array with the string is in it
a = %w(this is an issue with many side effects).my_delete_if { |i| i =~ /is/ }
puts "\na is #{a.inspect}"

a = %w(this is an issue with many side effects)
puts "\na is #{a.inspect}"
b = a.my_delete_if { |i| i =~ /is/ }
puts "\nb is #{b.inspect}"


# remove the element from the array with the string is in it
a = %w(this is anis issue iswith imany iside effects).my_delete_if { |i| i =~ /is/ }
puts "\na is #{a.inspect}"


puts "Function remove elements from the array directly. Not returning a copy"

a = [1, 2, 3, 4, 5, 6]
a.my_delete_if! { |i| i < 3}
puts "\na is #{a.inspect}"

# delete the element from the array if it is <= 3
b = [1, 2, 3, 4, 5, 6]
b.my_delete_if! { |i| i <= 3}
puts "\nb is #{b.inspect}"

# delete the element from the array if it is >= 3
c = [1, 2, 3, 4, 5, 6]
c.my_delete_if! { |i| i >= 3}
puts "\nc is #{c.inspect}"

# remove the element from the array with the string is in it
d = %w(this is an issue with many side effects)
d.my_delete_if! { |i| i =~ /is/ }
puts "\nd is #{d.inspect}"



# remove the element from the array with the string is in it
e = %w(this is anis issue iswith imany iside effects)
e.my_delete_if! { |i| i =~ /is/ }
puts "\e is #{e.inspect}"



#ylee@ylee-hp-6200:~/pj/ruby_exercise/array_iterator$ ruby my_delete_if.rb
#
#a is [3, 4, 5, 6]
#
#a is [4, 5, 6]
#
#a is [1, 2]
#
#a is ["an", "with", "many", "side", "effects"]
#
#a is ["this", "is", "an", "issue", "with", "many", "side", "effects"]
#
#b is ["an", "with", "many", "side", "effects"]
#
#a is ["imany", "effects"]
#Function remove elements from the array directly. Not returning a copy
#
#a is [3, 4, 5, 6]
#
#b is [4, 5, 6]
#
#c is [1, 2]
#
#d is ["an", "with", "many", "side", "effects"]
#s ["imany", "effects"]
#ylee@ylee-hp-6200:~/pj/ruby_exercise/array_iterator$
#