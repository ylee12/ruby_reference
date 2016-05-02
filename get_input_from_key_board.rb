#puts "In which city do you stay?"  
#STDOUT.flush  
#city = gets.chomp  
#puts "The city is " + city + " and I like to play."
#
#puts "In what country are you born?"  
#STDOUT.flush  
#country = gets  
#puts "The country is " + country + " and I am 3."
#

#ylee@ylee-hp-6200:~/pj/ruby_exercise$ ruby get_input_from_key_board.rb
#In which city do you stay?
#Taipei
#The city is Taipeiand I like to play.
#In what country are you born?
#USA
#The country is USA
#and I am 3.
#ylee@ylee-hp-6200:~/pj/ruby_exercise$
#

################################################


  rice_on_square = 1  
  64.times do |square|  
    puts "On square #{square + 1} are #{rice_on_square} grain(s)"  
    rice_on_square *= 2  
  end


 # =============

 # see the object class

     puts 'I am in class = ' + self.class.to_s  
    puts 'I am an object = ' + self.to_s  
    print 'The object methods are = '  
    puts self.private_methods.sort  

