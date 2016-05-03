puts "\n\nQuestions 1"


val1 = true and false
val2 = true && false

puts val1
puts val2

puts "\n\nQuestions 2"

p true    ? "true" : "false"
p false   ? "true" : "false"
p nil     ? "true" : "false"
p 1       ? "true" : "false"
p 0       ? "true" : "false"
p "false" ? "true" : "false"
p ""      ? "true" : "false"
p []      ? "true" : "false"


puts "\n\nQuestions 3"

a = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }

keys = a.keys

p keys.map(&:to_s).sort_by(&:size)




puts "\n\nQuestions 4"

def times_two(arg1);
  puts arg1 * 2;
end

def sum(arg1, arg2);
  puts arg1 + arg2;
end

p times_two 5
p times_two(5)
p times_two (5)
p sum 1, 2
p sum(1, 2)

# note: This line will result in error
# p sum (1, 2)

# ruby_questions.rb:48: syntax error, unexpected ',', expecting ')'
# p sum (1, 2)

puts "\n\nQuestions 5"

VAL = 'Global'
 
module Foo
  VAL = 'Foo Local'
 
  class Bar
    def value1
      VAL
    end
  end
end
 
class Foo::Bar
  def value2
    VAL
  end
end


#What will be the value of each of the following:
p Foo::Bar.new.value1
p Foo::Bar.new.value2




puts "\n\nQuestions 6"


# You can call a Proc by using either the call method 
# on Proc, or by using the square bracket syntax, so this line of code also invokes the Proc 
# and passes it the string “Hello World”.
-> (a) {p a}["Hello world"]



puts "\n\nQuestions 7"

#What is the difference between calling super and calling super()?





puts "\n\nQuestions 8"

foo = "foo"
foo2 = foo

p "Before concat, foo id is #{foo.object_id}."
p "Before concat, foo2 id is #{foo2.object_id}."
foo.concat "bar"

puts foo
#=> "foobar"
puts foo2
#=> "foobar"

p foo.object_id
p foo2.object_id

foo += "baz"
puts foo
#=> "foobarbaz"
puts foo2
#=> "foobar"

p foo.object_id
p foo2.object_id


# Questions 8
# "Before concat, foo id is 16171140."
# "Before concat, foo2 id is 16171140."
# foobar
# foobar
# 16171140
# 16171140
# foobarbaz
# foobar
# 16168540
# 16171140



puts "\n\nQuestions 9"

# Write a single line of Ruby code that prints the Fibonacci sequence of any length as an array.
# (Hint: use inject)

# factorial
puts [5,4,3,2,1].inject(1) { |product, i| product *= i}

puts [7, 6, 5,4,3,2,1].inject(1) { |product, i| product *= i}

# fibo
puts (1..5).inject( [0, 1] ) { | fib | fib << fib.last(2).inject(:+) }




puts "\n\nQuestions 10"

# Write a method that counts the number of elements of the 
# array that is being passed in, only if the index of the number 42 in the one-dimensional representation of the array is 5. 

def zen(array)
  converted = array.compact.flatten
  converted.index(42) == 5 ? converted.count : nil
end

p zen([4, 8, 15, 16, 23, 42])

p zen([4, 8, 15, 16, 23, 42, 33, 24, 56])

p zen([4, 8, 15, 16, 23, 420, 33, 24, 56])

# Questions 10
# 6
# 9
# nil
# 

puts "\n\nQuestions 11"

def get_lat_2(array)
  #p array.slice(-2, 2)
  array.slice(-2, 2).join("|")
end

p get_lat_2(%w(this is a book with a b c and so many more))

p get_lat_2(%w(this is))

#p get_lat_2(%w(this))

puts "\n\nQuestions "


puts "\n\nQuestions "


puts "\n\nQuestions "


puts "\n\nQuestions "


puts "\n\nQuestions "
