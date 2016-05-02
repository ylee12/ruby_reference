

# calculate result with function passing various size and type of parameters 
# examples,
# my_calculate(20, 2, 3, subtract: true)
#
# my_calculate(20, 2, 3)
#
##edge cases
# my_calculate(100, 2, "a", "abc", 3, {add: true, subtract: true, multiply: true, divide: true}, "this is a book", "hello! California")



def my_add(params)

  #puts "Inside my_add, params is #{params.inspect}"

  sum = 0
  params.each { |i|  sum += i}

  return sum

end



def my_subtract(params)

  s = params.size
  result = (s >= 1) ? params[0] : 0
  

  if s >= 2
    for j in 1..s-1
      result -= params[j] 
    end
  end


  return result
  
end


def my_multiply(params)

  result = 1
  params.each { |i|  result *= i}

  return result

end



def my_divide(params)

  s = params.size
  result = (s >= 1) ? params[0] * 1.0 : 0
  

  if s >= 2
    for j in 1..s-1
      result /= params[j] 
    end
  end


  return result
  
end


#default is add operation
def my_calculate(*params)

  puts "\nStarting...."

  operations = {}
  operands = []

  
  params.reverse.each do |p|

    puts "param p is #{p.inspect}. Its class is #{p.class}"

    #determine what p is
    operations = p if p.is_a?(Hash)
    operands << p if p.is_a?(Fixnum)

  end

  # perform operations

  #check the default operation
  if operations.size == 0

    puts "\n Performing add... for default operation"
    result = my_add(operands)
    puts "Result is #{result}."

  else

    operations.each do | key, val|
  
      if val == true 
        if key == :add
          puts "\n Performing add..."
          result = my_add(operands)
          puts "Result is #{result}."
  
        elsif key == :subtract
          puts "\n Performing subtract..."
          result = my_subtract(operands)
          puts "Result is #{result}."
    
        elsif key == :multiply
          puts "\n Performing multiply..."
          result = my_multiply(operands)
          puts "Result is #{result}."
    
        elsif key == :divide
          puts "\n Performing divide..."
          result = my_divide(operands)
          puts "Result is #{result}."
    
        else
          puts "Unknow operation #{key}. It is ignored."
  
    
        end
      end
          
      
    end
  end
  
end


my_calculate(10, 2, 3, add: true, subtract: true, multiply: true, divide: true)

my_calculate(100, 5, 5, add: true, subtract: false, multiply: true, divide: true)

my_calculate(20, 2, 3, add: false, subtract: true)

my_calculate(20, 2, 3, subtract: true)

my_calculate(20, 2, 3)

#edge cases
my_calculate(100, 2, "a", "abc", 3, {add: true, subtract: true, multiply: true, divide: true}, "this is a book", "hello! California")

my_calculate(20, "aa", "bb", 2, 3, {add: true, subtract: true, multiply: true, divide: true}, "this is a book", "hello! California")



#ylee@ylee-hp-6200:~/pj/ruby_exercise$ ruby dynamic_function_0.rb
#
#Starting....
#param p is {:add=>true, :subtract=>true, :multiply=>true, :divide=>true}. Its class is Hash
#param p is 3. Its class is Fixnum
#param p is 2. Its class is Fixnum
#param p is 10. Its class is Fixnum
#
# Performing add...
#Result is 15.
#
# Performing subtract...
#Result is -9.
#
# Performing multiply...
#Result is 60.
#
# Performing divide...
#Result is 0.15.
#
#Starting....
#param p is {:add=>true, :subtract=>false, :multiply=>true, :divide=>true}. Its class is Hash
#param p is 5. Its class is Fixnum
#param p is 5. Its class is Fixnum
#param p is 100. Its class is Fixnum
#
# Performing add...
#Result is 110.
#
# Performing multiply...
#Result is 2500.
#
# Performing divide...
#Result is 0.01.
#
#Starting....
#param p is {:add=>false, :subtract=>true}. Its class is Hash
#param p is 3. Its class is Fixnum
#param p is 2. Its class is Fixnum
#param p is 20. Its class is Fixnum
#
# Performing subtract...
#Result is -19.
#
#Starting....
#param p is {:subtract=>true}. Its class is Hash
#param p is 3. Its class is Fixnum
#param p is 2. Its class is Fixnum
#param p is 20. Its class is Fixnum
#
# Performing subtract...
#Result is -19.
#
#Starting....
#param p is 3. Its class is Fixnum
#param p is 2. Its class is Fixnum
#param p is 20. Its class is Fixnum
#
# Performing add... for default operation
#Result is 25.
#
#Starting....
#param p is "hello! California". Its class is String
#param p is "this is a book". Its class is String
#param p is {:add=>true, :subtract=>true, :multiply=>true, :divide=>true}. Its class is Hash
#param p is 3. Its class is Fixnum
#param p is "abc". Its class is String
#param p is "a". Its class is String
#param p is 2. Its class is Fixnum
#param p is 100. Its class is Fixnum
#
# Performing add...
#Result is 105.
#
# Performing subtract...
#Result is -99.
#
# Performing multiply...
#Result is 600.
#
# Performing divide...
#Result is 0.015.
#
#Starting....
#param p is "hello! California". Its class is String
#param p is "this is a book". Its class is String
#param p is {:add=>true, :subtract=>true, :multiply=>true, :divide=>true}. Its class is Hash
#param p is 3. Its class is Fixnum
#param p is 2. Its class is Fixnum
#param p is "bb". Its class is String
#param p is "aa". Its class is String
#param p is 20. Its class is Fixnum
#
# Performing add...
#Result is 25.
#
# Performing subtract...
#Result is -19.
#
# Performing multiply...
#Result is 120.
#
# Performing divide...
#Result is 0.075.
#ylee@ylee-hp-6200:~/pj/ruby_exercise$