# Auothor: Yong Lee
# Desc: Demo - A custom block can return a value to the calling function.
class Array 
  
  def my_modified_each
   
    i = 0
    
    while i < self.size

        puts

    	puts "Before calling custom block, item is #{self[i]}."
        
        # keep the value returned from the block
        self[i] = yield(self[i]) if block_given?

        puts "After calling custom block, item is #{self[i]}."

        puts "Inside calling function i is #{i}."

        i+=1      
    end
    
    puts "I am out of my_each function now..."
    puts "self is now #{self.inspect}"
    
    self

  end

end

a = %w(this is a very long string).my_modified_each { |i| i.upcase }
puts "Outside the calling function. a is now #{a.inspect} "

puts "Done."

b = %w(this is a very long string).my_modified_each() {}
puts "Outside the calling function. b is now #{b.inspect} "

# output
# [ylee@ylee-asus ruby_exercise]$ ruby custom_block_function_with_return.rb 
# 
# Before calling custom block, item is this.
# After calling custom block, item is THIS.
# Inside calling function i is 0.
# 
# Before calling custom block, item is is.
# After calling custom block, item is IS.
# Inside calling function i is 1.
# 
# Before calling custom block, item is a.
# After calling custom block, item is A.
# Inside calling function i is 2.
# 
# Before calling custom block, item is very.
# After calling custom block, item is VERY.
# Inside calling function i is 3.
# 
# Before calling custom block, item is long.
# After calling custom block, item is LONG.
# Inside calling function i is 4.
# 
# Before calling custom block, item is string.
# After calling custom block, item is STRING.
# Inside calling function i is 5.
# I am out of my_each function now...
# self is now ["THIS", "IS", "A", "VERY", "LONG", "STRING"]
# Outside the calling function. a is now ["THIS", "IS", "A", "VERY", "LONG", "STRING"] 
# Done.
# 
# Before calling custom block, item is this.
# After calling custom block, item is .
# Inside calling function i is 0.
# 
# Before calling custom block, item is is.
# After calling custom block, item is .
# Inside calling function i is 1.
# 
# Before calling custom block, item is a.
# After calling custom block, item is .
# Inside calling function i is 2.
# 
# Before calling custom block, item is very.
# After calling custom block, item is .
# Inside calling function i is 3.
# 
# Before calling custom block, item is long.
# After calling custom block, item is .
# Inside calling function i is 4.
# 
# Before calling custom block, item is string.
# After calling custom block, item is .
# Inside calling function i is 5.
# I am out of my_each function now...
# self is now [nil, nil, nil, nil, nil, nil]
# Outside the calling function. b is now [nil, nil, nil, nil, nil, nil] 
# [ylee@ylee-asus ruby_exercise]$ 
# 
