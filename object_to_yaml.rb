require 'yaml' 

class Ogre
  def initialize(strength, speed)
    @strength = strength
    @speed = speed
  end
  
  # this is reminiscent of our old friend, CerealBox#from_s
  def self.deserialize(yaml_string)
    #YAML::load(yaml_string)
    YAML.load(yaml_string)
  end
  
  # and this is a much-simplified version of our CerealBox#to_s
  def serialize
    #YAML::dump(self)
    YAML.dump(self)

  end
  
  # now we're free to define #to_s however we like!
  # ...which is great, because #to_s is for programmers to read, 
  # not computers or users
  def to_s
    "Ogre: [strength = #{@strength}, speed = #{@speed}]"
  end
end

wendigo = Ogre.new(47, 3)
yaml = wendigo.serialize
puts "The yaml looks like this:"
p yaml
puts "It's just a boring old string: #{yaml.class}"

o = Ogre.deserialize(yaml)

p o 
p o.class

puts "...and it's easy to change back: #{o}"
puts

shrek = Ogre.new(62, 12)
fiona = Ogre.new(66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays! They're just another object. #{ogres}"


# [ylee@ylee-asus ruby_exercise]$ ruby object_to_yaml.rb 
# The yaml looks like this:
# "--- !ruby/object:Ogre\nstrength: 47\nspeed: 3\n"
# It's just a boring old string: String
# #<Ogre:0x000000021c2800 @strength=47, @speed=3>
# Ogre
# ...and it's easy to change back: Ogre: [strength = 47, speed = 3]
# 
# We can even serialize arrays! They're just another object. [#<Ogre:0x000000021c0fc8 @strength=62, @speed=12>, #<Ogre:0x000000021c0f78 @strength=66, @speed=37>]
# [ylee@ylee-asus ruby_exercise]$ 


#==============================================================