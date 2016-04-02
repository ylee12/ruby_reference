
# use of closure
my_proc = Proc.new { |arg1| print "#{arg1}! " }
[1,2,3].each(&my_proc)

puts
pr = Proc.new { puts "Inside a Proc's block" }
pr.call

#---------------------------------
# call a proc
# the & in capture_block(&p) does two things: it triggers a 
# call to p's to_proc method, and it tells Ruby that the 
# resulting Proc object is serving as a code block stand-in.
def call_a_proc(&my_proc)
 my_proc.call
end

# call a function and passing a block to that function
call_a_proc { puts "Hello. I'm the block...or Proc...And who are you!!" }

#----------------------
# also be able to pass a proc to a function and have the function to call it
p = Proc.new {|x| puts x.upcase }
%w{ David Black }.each(&p)

#----------------------

# And use symbol :  with a proc
# The symbol :capitalize is interpreted as a message to be 
# sent to each element of the array in turn.
%w{ david2 black2 }.each(&:capitalize)

#the above is same as this
%w{ david3 black3 }.each {|str| puts str.capitalize }

# and same as this 
%w{ david4 black4 }.each {|str| puts str.send(:capitalize) }

# call proc with argument
pr = Proc.new {|x| puts "Called with argument #{x}" }
pr.call(100)

# output
# [ylee@ylee-asus ruby_exercise]$ ruby proc.rb 
# 1! 2! 3! 
# Inside a Proc's block
# Hello. I'm the block...or Proc...And who are you!!
# DAVID
# BLACK
# David3
# Black3
# David4
# Black4
# Called with argument 100
# [ylee@ylee-asus ruby_exercise]$ 
# 