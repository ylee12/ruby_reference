
# see this link: http://www.tutorialspoint.com/ruby/ruby_operators.htm

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST


##########################
# [ylee@ylee-asus ruby_exercise]$ ruby colon_operator.rb 
#  out there inside one
#  inside two
#  out there inside two
#  inside two out there
# #<Proc:0x000000022008a8@colon_operator.rb:4>
#  in there inside two
# [ylee@ylee-asus ruby_exercise]$ 
# 