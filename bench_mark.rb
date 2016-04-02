require "benchmark"
 require "set"
 array = ["a", -3.14, 0, []]
 set = array.to_set

 Benchmark.bm do |bench|
   bench.report("array:") do
     1000.times { array.include? -3.14 }
   end
   
   bench.report("set:") do
     1000.times { set.include? -3.14 }
   end
end