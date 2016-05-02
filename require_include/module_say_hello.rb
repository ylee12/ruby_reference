#!/usr/bin/env ruby

#this should fail....
#say_hello "Yong Lee"

puts "1. Ruby Load Path is #{$:}"


puts "Current file name is #{__FILE__}"

#get the dir name of the current file
lib_dir = File.dirname(__FILE__)

puts "Dir name is #{lib_dir}"

#get the full path
lib_full_path = File.expand_path(File.dirname(__FILE__))

puts "Full path is #{lib_full_path}"

#Add the full path to Ruby's $LOAD_PATH if its entry is not already in the $LOAD_PATH 
$:.unshift(lib_full_path) unless $:.include?(lib_dir) || $:.include?(lib_full_path)

puts "2. Ruby Load Path is #{$:}"

require "say_hello"

#puts "Ruby Load Path is #{$:}"

say_hello "Yong Lee"

say_hello "David"
