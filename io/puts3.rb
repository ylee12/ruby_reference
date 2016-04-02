
while line = gets
  break if (line =~ /q[uit]/ || line =~ /bye/)  
  puts line
end