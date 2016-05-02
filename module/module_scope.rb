module Kata
  A = 5
  module Dojo
    B = 9
    A = 7
    
    class ScopeIn
      def push

        puts "INside push. kata::A is #{Kata::A}."
        puts "INside push. Kata::Dojo::A is #{Kata::Dojo::A}."
        ::A
      end
    end
  end
end


A = 100

puts "Outside of module. A is #{Kata::Dojo::ScopeIn.new.push}"

#ylee@ylee-hp-6200:~/pj/ruby_exercise/module$ ruby module_scope.rb
#INside push. kata::A is 5.
#INside push. Kata::Dojo::A is 7.
#Outside of module. A is 100