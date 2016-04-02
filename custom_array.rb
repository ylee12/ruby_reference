
class BoundsCheckedArray < Array
   
   def [](idx)
     self.fetch(idx) { |i| puts "Hey, your index #{i} is out of range." }
   end
end

# create 5 element and randomly assign a number from 0 to 10 to it
ar = BoundsCheckedArray.new(5) { rand(10)}

puts "array is #{ar}"

for i in (0..9)
	begin

		puts "Array[#{i}] is #{ar[i]}"

	rescue
		puts "Sorry! #{i} is out of range"
	end
end



# output
# [ylee@ylee-asus ruby_exercise]$ ruby custom_array.rb 
# array is [5, 6, 0, 0, 0]
# Array[0] is 5
# Array[1] is 6
# Array[2] is 0
# Array[3] is 0
# Array[4] is 0
# Hey, your index 5 is out of range.
# Array[5] is 
# Hey, your index 6 is out of range.
# Array[6] is 
# Hey, your index 7 is out of range.
# Array[7] is 
# Hey, your index 8 is out of range.
# Array[8] is 
# Hey, your index 9 is out of range.
# Array[9] is 
# [ylee@ylee-asus ruby_exercise]$ 
# 