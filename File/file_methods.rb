#!/usr/bin/env ruby


#Note: PWD is /home/ylee/pj/ruby_exercise/File

puts File.absolute_path("~oracle/bin") 
#/home/ylee/pj/ruby_exercise/File/~oracle/bin

puts File.absolute_path("~/oracle/bin") 
#/home/ylee/pj/ruby_exercise/File/~/oracle/bin

puts File.absolute_path("~/oracle/bin", "lib") 
#/home/ylee/pj/ruby_exercise/File/lib/~/oracle/bin







puts __FILE__
#./file_methods.rb

puts __LINE__
#16

puts File.absolute_path(__FILE__)
#/home/ylee/pj/ruby_exercise/File/file_methods.rb

puts File.absolute_path(__FILE__, "..") 
#/home/ylee/pj/ruby_exercise/file_methods.rb

puts File.absolute_path(__FILE__, "lib") 
#/home/ylee/pj/ruby_exercise/File/lib/file_methods.rb

puts File.absolute_path(__FILE__, "../lib") 
#/home/ylee/pj/ruby_exercise/lib/file_methods.rb

puts File.absolute_path(__FILE__, "../abc/123") 
#/home/ylee/pj/ruby_exercise/abc/123/file_methods.rb

puts File.absolute_path(__FILE__, "abc/123") 
#/home/ylee/pj/ruby_exercise/File/abc/123/file_methods.rb

puts File.absolute_path(__FILE__, "/abc/123") 
#/abc/123/file_methods.rb


###################################################

puts File.atime(__FILE__)
#2015-05-21 16:13:35 -0700

#################

puts File.basename(File.absolute_path(__FILE__))
#file_methods.rb

puts File.basename(File.absolute_path(__FILE__), ".")
#file_methods.rb

puts File.basename(File.absolute_path(__FILE__), "rb")
#file_methods.

puts File.basename(File.absolute_path(__FILE__), ".*")
#file_methods

###########

#puts File.birthtime(__FILE__)

############

puts File.chmod(0777, __FILE__)

###################

puts File.ctime(__FILE__)

##############

    
P