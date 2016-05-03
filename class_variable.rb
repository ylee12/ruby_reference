

class GrandParent

	@@my_count = 0
	attr_accessor :name, :desc

	def initialize(name, desc)

		@name, @desc = name, desc
		@@my_count +=1
		
	end

    # note: both class methods and instance methods can access calss variables
	def self.get_my_count
		@@my_count
	end

	def self.set_my_count(count)
		@@my_count = count
	end



end

class Parent < GrandParent

end

class Child < Parent

end


puts GrandParent.get_my_count
puts Child.get_my_count


gp_1 = GrandParent.new("GP Lee", "Grand Parent Lee")
gp_2 = GrandParent.new("GP PLee", "Grand Parent PLee")
gp_3 = GrandParent.new("GP CLee", "Grand Parent CLee")

puts "Count is now #{Child.get_my_count}."

pr1 = Parent.new("Parent Nicole", "Hi I am Nicole")
pr2 = Parent.new("Parent Yong", "Hi I am Yong")

puts "Count is now #{Child.get_my_count}."

ch1 = Child.new("Child Chloe","I am Chloe. I like Candy")
ch2 = Child.new("Child Caitlyn", "I am Caitlyn. I like hikingand listen to music.")

puts "Count is now #{Child.get_my_count}."


#[ylee@ylee-asus ruby_exercise]$ ruby class_variable.rb 
#0
#0
#Count is now 3.
#Count is now 5.
#Count is now 7.
