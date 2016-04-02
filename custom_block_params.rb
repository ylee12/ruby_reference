class Array
  def reverse_iterate
    current_index = self.size-1
    while current_index >= 0
      yield self[current_index], 'Value', current_index, 'Index'
      current_index -= 1
    end
  end

  def walk(j)
  	
  	puts "passed in param is #{j}"

  	my_new_array = []

  	for i in (0..self.length-1)
  		my_new_array[i] = yield self[i], {param_1: 2, param_2: "color", param_3: [1, 2, 3]}
  	end

  	#return the new array
  	my_new_array

  end

end


# use the catch all in second param
[2,4,6,8].reverse_iterate do |value, *others|
  puts "#{others[0]} = #{value}, #{others[2]} = #{others[1]}"
end


ar = %w(i like to program in Ruby on Rails).walk("abc Do RE ME") do |i, params| 

      #get the params
      a = params[:param_1]
      b = params[:param_2]
      c = params[:param_3]

	  puts "value is #{i.upcase}. a is #{a}, b is #{b}, c is #{c}"

	  #return the value
	  i.upcase

	end

puts "ar is #{ar.inspect}"

# output
# [ylee@ylee-asus ruby_exercise]$ ruby custom_block_params.rb 
# Value = 8, Index = 3
# Value = 6, Index = 2
# Value = 4, Index = 1
# Value = 2, Index = 0
# passed in param is abc Do RE ME
# value is I. a is 2, b is color, c is [1, 2, 3]
# value is LIKE. a is 2, b is color, c is [1, 2, 3]
# value is TO. a is 2, b is color, c is [1, 2, 3]
# value is PROGRAM. a is 2, b is color, c is [1, 2, 3]
# value is IN. a is 2, b is color, c is [1, 2, 3]
# value is RUBY. a is 2, b is color, c is [1, 2, 3]
# value is ON. a is 2, b is color, c is [1, 2, 3]
# value is RAILS. a is 2, b is color, c is [1, 2, 3]
# ar is ["I", "LIKE", "TO", "PROGRAM", "IN", "RUBY", "ON", "RAILS"]
