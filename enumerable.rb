arr = Array(1..10)

# return the enumerator object
each_enum = arr.each


#iterate with the enumerator object
printf("%d\n", each_enum.next)
printf("%d\n", each_enum.next)
printf("%d\n", each_enum.next)
printf("%d\n", each_enum.next)
printf("%d\n", each_enum.next)
printf("%d\n", each_enum.next)
printf("%d\n", each_enum.next)

# output 
#[ylee@ylee-asus ruby_exercise]$ ruby enumerable.rb 
#1
#2
#3
#4
#5
#6
#7
