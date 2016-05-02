module Mod_1
  def hello1
    puts "Hello from Mod_1.\n"
  end
end

module Mod_2
  def hello2
    puts "Hello from Mod_2.\n"
  end
end

class Klass
  include Mod_1
  extend Mod_2
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
