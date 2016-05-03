
compare_words = %w(this taios thisis thisthis that thisa thisbnk thisplknh thaabbe thoing thoang thoong thi thiss thisha tong tao taio toan toank)
puts "\nBefore sort, compare_words is #{compare_words}"

#compare_words.sort_by! { |i| i.length}
#sort in alphabetical order and length in reverse order
a = compare_words.sort { |x, y| x <=> y }
puts "\nAfter regular sort by letter, compare_words is #{a}"

b= compare_words.sort { |x, y| y.length <=> x.length}
puts "\nAfter sorting by length, compare_words is #{b}"

c= compare_words.sort { |x, y| x <=> y && x.length <=> y.length}
puts "\nAfter sorting by alpha and length, compare_words is #{c}"

d = compare_words.sort { |x, y| x <=> y && y.length <=> x.length}
puts "\nAfter sort, compare_words is #{d}"

d = compare_words.sort
puts "\nAfter sort, compare_words is #{d}"

