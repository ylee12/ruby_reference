

#

def my_add(*params)

  sum = 0
  params.each { |i|  sum += i}

  return sum

end



def my_subtract(*params)

  result = 0
  result = params[0] if params.size >= 1

  params.each { |i| result -=i }

  return result
  
end


#default is add operation
def my_calculate(*params)

  puts "\nStarting...."

  params.reverse.each do |p|

    puts "param p is #{p.inspect}"

    
  end

end


my_calculate(10, 2, 3, add: true, subtract: true, multiply: true, divide: true)

my_calculate(100, 5, 5, add: true, subtract: false, multiply: true, divide: true)

my_calculate(20, 2, 3, add: false, subtract: true)

my_calculate(20, 2, 3, subtract: true)

my_calculate(20, 2, 3)

#edge case
my_calculate(10, 2, 3, {add: true, subtract: true, multiply: true, divide: true}, "this is a book", "hello! California")


#ylee@ylee-hp-6200:~/pj/ruby_exercise$ ruby dynamic_function.rb
#
#Starting....
#param p is {:add=>true, :subtract=>true, :multiply=>true, :divide=>true}
#param p is 3
#param p is 2
#param p is 10
#
#Starting....
#param p is {:add=>true, :subtract=>false, :multiply=>true, :divide=>true}
#param p is 5
#param p is 5
#param p is 100
#
#Starting....
#param p is {:add=>false, :subtract=>true}
#param p is 3
#param p is 2
#param p is 20
#
#Starting....
#param p is {:subtract=>true}
#param p is 3
#param p is 2
#param p is 20
#
#Starting....
#param p is 3
#param p is 2
#param p is 20
#
#Starting....
#param p is "hello! California"
#param p is "this is a book"
#param p is {:add=>true, :subtract=>true, :multiply=>true, :divide=>true}
#param p is 3
#param p is 2
#param p is 10
#ylee@ylee-hp-6200:~/pj/ruby_exercise$