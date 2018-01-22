first_arg, *the_rest = ARGV
puts first_arg

if the_rest.length > 10
  puts "too many args"
else
  puts the_rest
end
