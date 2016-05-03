# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the
# number and for the multiples of five print “Buzz”. For
# numbers which are multiples of both three and five
# print “FizzBuzz”.


for i in 1..100 do

    if i % 3 == 0 && i % 5 == 0
      print "FizzBuzz"  + " ,"
	elsif i % 3 == 0
		print "Fizz" + " ,"
	elsif i % 5 == 0
		print "Buzz" + " ,"
	else
		print i.to_s + " ,"
	end
		
end


#[ylee@ylee-asus ruby_exercise]$ ruby rb_exr.rb 
#1 ,2 ,Fizz ,4 ,Buzz ,Fizz ,7 ,8 ,Fizz ,Buzz ,11 ,Fizz ,13 ,14 ,FizzBuzz ,16 ,17 ,Fizz ,19 ,Buzz ,
#Fizz ,22 ,23 ,Fizz ,Buzz ,26 ,Fizz ,28 ,29 ,FizzBuzz ,31 ,32 ,Fizz ,34 ,Buzz ,Fizz ,
#37 ,38 ,Fizz ,Buzz ,41 ,Fizz ,43 ,44 ,FizzBuzz ,46 ,47 ,Fizz ,49 ,Buzz ,Fizz ,52 ,53 ,Fizz ,Buzz ,56 ,
#Fizz ,58 ,59 ,FizzBuzz ,61 ,62 ,Fizz ,64 ,Buzz ,Fizz ,67 ,68 ,Fizz ,Buzz ,71 ,Fizz ,73 ,74 ,FizzBuzz ,
#76 ,77 ,Fizz ,79 ,Buzz ,Fizz ,82 ,83 ,Fizz ,Buzz ,86 ,Fizz ,88 ,89 ,FizzBuzz ,91 ,92 ,Fizz ,94 ,Buzz ,Fizz ,
#97 ,98 ,Fizz ,Buzz ,[ylee@ylee-asus ruby_exercise]$#





############################################

puts "\n\n"

class Planet
  attr_accessor :name, :mesg
  
  @@planets_count = 0
    
  def initialize(name, mesg)
    #@name = name
    self.name = name
    @mesg = mesg


    @@planets_count += 1
  end
  
  def self.planets_count
    @@planets_count
  end  

  def status
  	p "My name is: #{self.name}. My mesg is #{self.mesg}."
  end


  def to_s
  	"I am #{@name}. And my message for the day is #{@mesg}."
  	
  end

end

er = Planet.new("earth", "We love to hear from you.")
ur = Planet.new("uranus", "Come here and you are dead!!")

p Planet.planets_count

puts er.inspect
puts "My er is #{er.inspect}"

p "#{er.name} #{er.mesg}"
p "#{ur.name} #{ur.mesg}" 

er.status()
ur.status()


#2
##<Planet:0x000000018887d0 @name="earth", @mesg="We love to hear from you.">
#My er is #<Planet:0x000000018887d0 @name="earth", @mesg="We love to hear from you.">
#"earth We love to hear from you."
#"uranus Come here and you are dead!!"
#"My name is: earth. My mesg is We love to hear from you.."
#"My name is: uranus. My mesg is Come here and you are dead!!."
#[ylee@ylee-asus ruby_exercise]$ 
#




#==================================

class ApplicationConfiguration
  @configuration = {}

  def self.set(property, value)
    @configuration[property] = value
  end

  def self.get(property)
    @configuration[property]
  end


  # Notwe: error in this call. Instance method can not access class instance
  # variable. Only calss methods can access class instance variables.
  def show_all_config_values

    # note: @configuration is nil here!!
    # Instance method can not access class instance
    # variable. Only calss methods can access class instance variables.
  	@configuration.each do |key, val|

  		puts "Key is #{key}. Value is #{val}"
  		
  	end
  	
  end



end

class ERPApplicationConfiguration < ApplicationConfiguration
  @configuration = {}
end

class WebApplicationConfiguration < ApplicationConfiguration
  @configuration = {}
end

ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p ERPApplicationConfiguration.get("name")
p WebApplicationConfiguration.get("name")


p ApplicationConfiguration.get("name")


#error in this call. Instance method can not access class instance
# variable. Only calss methods can access class instance variables.
#ERPApplicationConfiguration.new.show_all_config_values



#output:
#"ERP Application"
#"Web Application"
#nil


#==========================================================================


