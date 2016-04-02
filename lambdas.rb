
#
def return_test
 
 l = lambda { return }
 l.call              
 puts "Still here!"


 p = Proc.new { return }
 p.call                 
 puts "You won't see this message!"     
end

return_test




#-------------------

class Array
  def my_each(some_method)
    i = 0
    while i < self.size
      some_method.call(self[i])
      i+=1
    end
  end
  self
end

def print_stuff(word)
  print "#{word}! "
end


[1,2,3].my_each(method(:print_stuff))

puts
lam = lambda {|x| p x }
lam.call(1)

lam.call(1, 2)
puts "Here is more ..."
lam.call



# output
# [ylee@ylee-asus ruby_exercise]$ ruby lambdas.rb 
# Still here!
# 1! 2! 3! 
# 1
# lambdas.rb:41:in `block in <main>': wrong number of arguments (given 2, expected 1) (ArgumentError)
# 	from lambdas.rb:44:in `<main>'
# [ylee@ylee-asus ruby_exercise]$ 
