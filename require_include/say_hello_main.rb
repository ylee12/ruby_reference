#!/usr/bin/env ruby


#to run this, type either ./say_hello_main.rb (thanks to the shebang line above) 
#or use the ruby interpreter by typing ruby say_hello_main.rb

#Use this when the library file is not in the LOAD_PATH
require_relative "say_hello"

puts "Ruby Load Path is #{$LOAD_PATH}"

say_hello "Yong Lee"

say_hello "David"
