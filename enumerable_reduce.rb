[1,2,3].reduce do |accumulator, current|
  puts "Accumulator: #{accumulator}, Current: #{current}"
  accumulator + current
end

puts()
puts "Second pass ..."

[1,2,3].reduce(0) do |accumulator, current|
  puts "Accumulator: #{accumulator}, Current: #{current}"
  accumulator + current
end

puts()
puts "Third pass ..."

[1,2,3].reduce(1) do |accumulator, current|
  puts "Accumulator: #{accumulator}, Current: #{current}"
  accumulator + current
end