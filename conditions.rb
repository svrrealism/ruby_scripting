products = ["WinPerl", "BASH"]

# Ensure that products var is defined
if defined? products
  if products.empty?
    puts "EMPTY"
   else
     puts "FULL"
     products.each{ |i| puts i.upcase }
  end
else
  puts "Sorry, VAR: products is undefined"
end

#While Loop
count = 0
while count <= 10
  #condition to match count=3
  if count == 3
    print "BINGO: ", count, "\n"
  else
    puts count
  end
  count += 1
end
