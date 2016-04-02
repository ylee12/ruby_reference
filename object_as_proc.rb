
# the 
class Person
 attr_accessor :name     

 # turn the object into a proc
 def self.to_proc                    
  Proc.new {|person| person.name }
 end

end

d = Person.new    
d.name = "David"
m = Person.new
m.name = "Matz"

# the & in capture_block(&p) does two things: it triggers a 
# call to p's to_proc method, and it tells Ruby that the 
# resulting Proc object is serving as a code block stand-in.
puts [d,m].map(&Person)     

# Output:
# [ylee@ylee-asus ruby_exercise]$ ruby object_as_proc.rb 
# David
# Matz
