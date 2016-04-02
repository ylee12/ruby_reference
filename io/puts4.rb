
while line = gets
  break if (line =~ /^[qQbB]$/ || line =~ /^bye$/ || line =~ /^quit$/)  
  puts line
end