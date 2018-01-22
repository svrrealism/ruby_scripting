# Show all files in the current directory as an array
Dir.glob "*"

# Set var for array contents and then Loop over the listed contents of the array of directory items
cd1 = Dir.glob "*"
cd1.each { |_| puts _ }
# Alternative syntax for the loop
cd1.each do |_| puts _ end

#Alter the ouputs of the listed files like so:
cd1.each do |_| puts _.upcase end
puts "\n"
cd1.each do |_| puts _.downcase end
puts "\n"
cd1.each do |_| puts _.swapcase end
puts "\n"
cd1.each do |_| puts _.capitalize end


# Print the attibutes of the files that are being listed

  #access time
  cd2 = Dir.glob "*"
  # Just as an aside, I visualize the 'do' in loops as parentheses of the 'each' method with the param |x| as a passthrough param
  cd2.each do |d|
    cfile = File.open(d)
    puts cfile.atime
  end
