#gsub usage
# for string replacement


b = "hello".gsub(/./) {|s| s.ord.to_s + ' '}
puts "\na is #{b}"

c = "hello".gsub(/[aeiou]/, '*') 
puts "\nc is #{c}"

# replace the found sub string with 123
a = "thisisaverylongstringwithmanycharacterscatdogetc".gsub(/th/, '123') { |i| puts i }
puts "\na is #{a}"

# inplace replacement - replace the found sub string with 123
a2 = "thisisaverylongstringwithmanycharacterscatdogetc"
a2.gsub!(/th/, '123') { |i| puts i }
puts "\na2 is #{a2}"


a3 = "this is a fun string and this is very interesting too".gsub(/this/, 'that')
puts "\na3 is #{a3}"
#####################################################################

#include?

puts "\nmy name is Yong".include?("yong")
#false
 
puts "\nmy name is Yong".include?("Yong")
#true
 
#####################################################################


#index
#Returns the index of the first occurrence of the given substring or pattern (regexp) in str. 
#Returns nil if not found. If the second parameter is present, it specifies the position in the string to begin the search.
a = "thisisaverylongyhisthisingwithmanycharacthisscatdogetc".index(/th/)
puts "\na is #{a}"

a = "thisisaverylongyhisthisingwithmanycharacthisscatdogetc".index(/this/, 1)
puts "\na is #{a}"

a = "thisisaverylongyhisthisingwithmanycharacthisscatdogetcthatis".index(/that/, 0)
puts "\na is #{a}"


#####################################################################

#lines

puts "\nlines example"
#break the line into array of words with space
a= "this is a very long string and I want to see if this works".lines(' ')
puts "\na is #{a}"




#######################################################################
#scan
puts "\nscan example"
a = "this is fine andit s a very long string and I want to see if this works"
#a.scan(/\w+/) do |i|
#	print #{i} + ' _'
#	
#end

a = "this is fine andit s a very long string and I want to see if this works"
print a.scan(/\w+/)
puts

#############################################################################

#slice

puts "\nslice example"
a = "this is fine andit s a very long string and I want to see if this works"
c = a.slice(2, 10) 
puts "\nc is #{c}"

#using slice too
puts a[8,10]
###################################################################################

#split
puts "\nsplit example"

#break this into array of words
a = "this is fine andit s a very long string and I want to see if this works"
cb= a.split(' ') 

puts "\ncb is #{cb}"


#break this into array of words
a = "I like ruby programming"
cb= a.split(/ruby/) 

puts "\ncb is #{cb}"
##########################################################################

# sub
puts "\nsub example"

a = "I like ruby programming and ruby is fun."
cb= a.sub(/ruby/, 'Javascript') 

puts "\ncb is #{cb}"

##########################################################################

puts "\nlines example"
########################################################################

puts "\nlines example"
############################################################

puts "\nlines example"