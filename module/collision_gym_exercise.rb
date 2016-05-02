
require_relative "lib/collision_gym_a" 
gym_push = Push.new
a = gym_push
p gym_push.up # 40

gym_push_a = Push.new

require_relative "lib/collision_gym_b" 
gym_push = Push.new
p gym_push.up # 20

gym_push_b = Push.new
p a.up # 20

p gym_push_a.up # 20, opps... Its behavior got overridden!
p gym_push_b.up # 20
p gym_push_a.up # 20
p gym_push_b.up # 20

# ylee@ylee-hp-6200:~/pj/ruby_exercise/module$ ruby collision_gym_exercise.rb
# 40
# 20
# 20
# 20
# 20
# 20
# 20
# ylee@ylee-hp-6200:~/pj/ruby_exercise/module$