
# This demo shows the usage of class instance variables and instance variables in child classes
class ConfusingConfiguration
  @configuration = {}

  attr_accessor :name, :desc

  def initialize(name, desc)
  	@name, @desc = name, desc
  end

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

  # access the instance variables
  def details
  	"Name is: #{@name}. Desc is #{desc}."
  end



end

class ERPApplicationConfiguration < ConfusingConfiguration
  @configuration = {}
end

class WebApplicationConfiguration < ConfusingConfiguration
  @configuration = {}
end

ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p ERPApplicationConfiguration.get("name")
p WebApplicationConfiguration.get("name")


p ConfusingConfiguration.get("name")


er = ERPApplicationConfiguration.new("ERPApplicationConfiguration", " My ERP Application Configuration settings")

web = WebApplicationConfiguration.new("WebApplicationConfiguration", " My Web Application Configuration settings")

app = ConfusingConfiguration.new("ApplicationConfiguration", " My Application Configuration settings")

# access the instance variables
puts er.details
er.name = "New ER name"
er.desc = "My new ER description"
puts er.details

puts web.details

puts app.details

#[ylee@ylee-asus ruby_exercise]$ ruby class_instance_var_vs_instance_var.rb 
#"ERP Application"
#"Web Application"
#nil
#Name is: ERPApplicationConfiguration. Desc is  My ERP Application Configuration settings.
#Name is: New ER name. Desc is My new ER description.
#Name is: WebApplicationConfiguration. Desc is  My Web Application Configuration settings.
#Name is: ApplicationConfiguration. Desc is  My Application Configuration settings.
#[ylee@ylee-asus ruby_exercise]$ 
