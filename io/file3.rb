
i = 0
File.foreach(ARGV[0]) do |line|
	i+=1
	puts "Line #{i}: #{line}"
	print "Repeated Line #{i}: #{line}"
end