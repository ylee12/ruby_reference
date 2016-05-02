require_relative "lib/module_1"
require_relative "lib/module_2"

class Klass
  include Mod_1   # will get error when we call a method in Mod_1 if we do not include this line
  extend Mod_2    # will get error when we call a method in Mod_2 if we do not include this line
  def hello3
    puts "Hello from Klass.\n"
  end
end

c = Klass.new()
c.hello1()
# c.hello2     #error in this method because it is a Class method so not callable by an instance
Klass.hello2
#Klass.hello1  #error in this method because it is an intance method so not callable by a Class
c.hello3()
