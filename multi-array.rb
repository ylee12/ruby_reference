
# loop through each element in a multi-dimensional array
[[1, 2, 3, 4], [42, 43], ['a', 'b', 'c', 'd'], ['this', 'is', 'a', 'string']].each do |element| 
  element.each do | i |
    print "#{i}, "
  end
  puts "\n\n"
end


# [ylee@ylee-asus ruby_exercise]$ ruby multi-array.rb
# 1, 2, 3, 4, 
# 
# 42, 43, 
# 
# a, b, c, d, 
# 
# this, is, a, string, 

#======================================

#The method accepts only a two-dimensional array. The elements of the array that this method returns are the sums of 
#the first two elements of each inner-array of the two-dimensional array that is passed in. 
def compute(ary)
  
  return nil if ary.nil?

  

  ary.map do |i|

  	if i.size == 0
  	  0
  	elsif i.size <= 1
  	  i[0]
  	else
  	  a, b = i
      a+b
  	end
    
  end

  
end


p "Part 2 begin..."
p compute([[], [5], [4, 8], [15, 16], [12, 13, 24]])



# [12, 31]
# [ylee@ylee-asus ruby_exercise]$ 
# 

def compute(ary)
  return nil if ary.nil?

  new_ary = []

  ary.each_with_index do |i, index|
    sum = 0
    #for j in i
    i.each do |j|
    
      sum += j
    end

    new_ary[index] = sum
  end

  new_ary
end



p compute([[4, 8], [15, 16]])


#========================================


def compute(ary)
  
  return nil if ary.nil?

  

  ary.map do |i|

  	#puts "i is #{i.inspect}"
  	sum = 0

  	i.each_with_index do |j, index|

  		#puts "j is #{j.inspect}"
  		#p "index is #{index}"

  		sum += j

  		#p "sum is #{sum}"



  	end

  	#p "out of the loop"
  	sum
   
  end

  
end

p "Let's the learning begin!"

p compute([[], [23,11,11], [44, 44, 44], [34], [87, 11, 55, 33]])