class Array 
  
  def my_each
   
    i = 0
    
    while i < self.size

    	if block_given?

    	  puts "Before calling custom block, item is #{self[i]}."
          yield(self[i]) 
  
          puts "Inside calling function i is #{i}"
          i+=1      
        end
    end
    
    puts "I am out of my_each function now..."
    puts "self is now #{self.inspect}"
    
    self

  end

end

%w(this is a very long string).my_each { |i| puts i.upcase }

puts "Done."

%w(this is a very long string).my_each() {}

# output
# [ylee@ylee-asus ruby_exercise]$ ruby custom_block_function.rb 
# Before calling custom block, item is this.
# THIS
# Inside calling function i is 0
# Before calling custom block, item is is.
# IS
# Inside calling function i is 1
# Before calling custom block, item is a.
# A
# Inside calling function i is 2
# Before calling custom block, item is very.
# VERY
# Inside calling function i is 3
# Before calling custom block, item is long.
# LONG
# Inside calling function i is 4
# Before calling custom block, item is string.
# STRING
# Inside calling function i is 5
# I am out of my_each function now...
# self is now ["this", "is", "a", "very", "long", "string"]
# Done.
# 