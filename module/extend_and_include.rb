

# Another un-common use of extend in initialize function
module Foo
  def method_in_module
    "The method defined in the module invoked"
  end
end

module Foo_2
  def method_in_module_2(name)
    "Hi #{name}. This is another way to use include."
  end
end



class Bar

  include Foo_2

  def initialize
    self.extend(Foo)
  end
end


bar = Bar.new
p bar.method_in_module

p bar.method_in_module_2('Yong')

# ylee@ylee-hp-6200:~/pj/ruby_exercise/module$ ruby extend_and_include.rb
# "The method defined in the module invoked"
# "Hi Yong. This is another way to use include."

#=======================================

# You have to modify the module Foo in the following exercise so that when you 
# include it the class Bar, it also adds all the methods from ClassMethods 
# into Bar as class methods. 
module Foo
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end
  
  def self.included(my_class)
    # extend another module
    my_class.extend(ClassMethods)
  end
  
end

class Bar
  include Foo
end

puts Bar.guitar

# op
# gently weeps

#==============================