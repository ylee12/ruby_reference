require_relative 'constant'



puts Const.new.get_const  

#Outside the class or module, they may be accessed using 
#the scope operator, :: prefixed by an expression that returns 
#the appropriate class or module.
puts Const::CONST  


#Constants defined outside any class or module may be accessed 
#as it is or by using the scope operator with no prefix.
puts ::OUTER_CONST  

#Constants may be added to existing classes and modules from 
#the outside by using the class or
#module name and the scope operator before the constant name.
puts Const::NEW_CONST = 123  




#[ylee@ylee-asus ruby_exercise]$ ruby demo_const_require.rb 
#100
#100
#99
#123
