#!/usr/bin/env ruby

puts "1. Ruby Load Path is #{$LOAD_PATH}"

#get the dir name of the current file
lib_dir = File.dirname(__FILE__)

puts "Dir name is #{lib_dir}"

#Add the dir name to Ruby's $LOAD_PATH if its entry is not already in the $LOAD_PATH 
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

puts "2. Ruby Load Path is #{$LOAD_PATH}"

require "say_hello"

#puts "Ruby Load Path is #{$LOAD_PATH}"

say_hello "Yong Lee"

say_hello "David"
