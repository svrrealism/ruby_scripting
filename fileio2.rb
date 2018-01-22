f0 = 'G8_Leaders'
# f1 = File.open(f0, "r")

#iterate over contents and format content
# f1.each do |i|
#   puts i
#   j = i.split
#   print j[2], " ", j[3], " ", j[0], " ", j[1], "\n"
# end

# Iterate over contents printing only if the line isn't blank
# f1.each do |i|
#   if /^$/ !~ i
#     puts i
#     j = i.split
#     print j[2], " ", j[3], " ", j[0], " ", j[1], "\n"
#   end
# end
# f1.close
#
# print "\n\n"

# Read File into a hash
# f1 = File.open(f0, "r")
# cl = {} #define empty hash first because Ruby reads everything in the file one line at a time. Build hash as we go.
#
# while f1.gets
#   if /^$/ !~ $_
#     # Print one line of the file
#     # puts $_
#
#     # Split into an array based on a single space or more.
#     # cr_split will be tokenized as an array
#     cr_split = $_.split(/\s+/)
#
#     # puts cr_split.class
#     # puts cr_split[0]
#
#     #Build Hash: i.e. cl['KEY'] = value
#     cl[cr_split[2]] = cr_split[0]
#   end
# end
#
# # After the loop is run, then you can prove that the hash has been built.
# # cl.keys.each{ |k| puts k }
# # cl.values.each{ |v| puts v }
#
# cl.each { |i| puts i, cl[i] }

#Note: Hashes MUST have unique keys. Looping at this point would cause the uk, Cameron case to be overwritten








# Task 4: Have a var set to the country and another var for the rest of the line

f3 = File.open(f0, "r")
cl = {} #define empty hash first because Ruby reads everything in the file one line at a time. Build hash as we go.

while f3.gets
  if /^$/ !~ $_
    cr_split = $_.split(/\s+/)
    # puts cr_split[0]
    rest_of_line = "#{if defined? cr_split[3] then cr_split[3] end}" + " " + cr_split[0] + " " +  cr_split[1] + "\n"

    print cr_split[2], " ", rest_of_line

    cl[cr_split[2]] = rest_of_line
  end
end

print "\n\n\n"

cl.keys.each { |k| puts k }
cl.values.each { |v| puts v  }
