module RubyMonk
  module Parser
    class TextParser
      def self.parse (my_str)
        
        a = my_str.split(' ')
        
        #a.map! do |i|
        #  i.capitalize
        #end
#
        #a

        #or
        b = a.map do |i|
          i.capitalize
        end
#
        b

        #or a differnt results 
        #my_str.upcase.split("")



      end

      def str_loop(my_str)
        my_str.each_char { |i| print i + ' ,' }
      end
    end
  end
end




puts "My modifiled string is #{RubyMonk::Parser::TextParser.parse("this is a very fun string.")}"

puts "My Second string test #{RubyMonk::Parser::TextParser.new.str_loop('I love ruby and wish I can master the language soon.')}"

#ylee@ylee-hp-6200:~/pj/ruby_exercise/module$ ruby module_parse_str.rb
#My modifiled string is ["This", "Is", "A", "Very", "Fun", "String."]
#I ,  ,l ,o ,v ,e ,  ,r ,u ,b ,y ,  ,a ,n ,d ,  ,w ,i ,s ,h ,  ,I ,  ,c ,a ,n ,  ,m ,a ,s ,t ,e ,r ,  ,t ,h ,e ,  ,l ,a ,n ,g ,u ,a ,g ,e ,  ,s ,o ,o ,n ,. ,My Second string test I love ruby and wish I can master the language soon.
#ylee@ylee-hp-6200:~/pj/ruby_exercise/module$
