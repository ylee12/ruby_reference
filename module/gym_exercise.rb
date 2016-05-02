# add current dir to the Ruby's library load_path
#lib = File.expand_path("/lib", __FILE__)
#lib = File.expand_path("/lib", ".")
#
#puts "lib path is #{lib}"
#$:.unshift(lib)
#or
#$LOAD_PATH << '.'

#require "lib/mygym"
#require "lib/your_gym"

#or

require_relative "lib/mygym"
require_relative "lib/your_gym"



dojo_push = Dojo::Push.new
p dojo_push.up

gym_push = Gym::Push.new
p gym_push.up