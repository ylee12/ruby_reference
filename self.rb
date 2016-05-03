class S  
  puts 'Just started class S'  
  puts self  
  module M  
    puts 'Nested module S::M'  
    puts self  
  end  
  puts 'Back in the outer level of S'  
  puts self  
end  



#[ylee@ylee-asus ruby_exercise]$ ruby self.rb 
#Just started class S
#S
#Nested module S::M
#S::M
#Back in the outer level of S
#S



########################################

class S2  
  def m  
    puts 'Class S2 method m:'  
    puts self  
  end  
end  
s = S2.new  
s.m  

#Class S2 method m:
##<S2:0x00000001afd178>  -> Ruby indicates it is an instance of S2
