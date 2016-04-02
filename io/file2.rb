
File.open(ARGV[0], "r") do |f|
	f.each_line do |line| 
	  puts line
	  puts line.dump
	end
end