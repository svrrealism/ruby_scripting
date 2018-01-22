require 'English'
require 'NowTime'
#Dump ALL $ARGV
if !$ARGV.empty? then $ARGV.each {|i| puts i} else m = "No Args supplied"; NowTime.new(m, "True"); exit 200 end

#Ensure that we have a set number of arguments: 2 Args
if $ARGV.length != 2 then m = "Need 2 Args - Exiting"; NowTime.new(m, "True"); exit 200 end

#Ensure that the args supplied meet criteria

#Ensure that ARGV[0] is equal to digit
if /\D+/ =~ $ARGV[0]
  m = "#{$ARGV[0]} IS NOT A DIGIT - EXITING"
  NowTime.new(m, "True")
  exit 200
end

#Ensure that ARGV[1] is equal to Word Character
if /[a-zA-Z_]/ !~ $ARGV[1]
  m = "#{$ARGV[1]} is not a word character ([a-zA-Z_]) - EXITING"
  NowTime.new(m, "True")
  exit 200
end

#Prune | Clean-up VARs
a0 = $ARGV[0].to_s
a1 = $ARGV[1].to_s.strip

NowTime.new(a0, "True")
NowTime.new(a1, "True")


### Rest of Script ###
