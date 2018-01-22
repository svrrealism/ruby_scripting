require 'English'
#might need to lowercase FileUtils on Linux
require 'FileUtils'

# If we want to see what's supplied on the command line (positional parameters),
#we use $ARGV and it is enumerable - brought in by the English module

# $ARGV.each { |i| puts i  }
puts "\n\n"
puts "#{$ARGV.length} Supplied Arguement(s)"
puts "="*10
puts "\n\n"

#Ensure proper length of args: index of first arg starts at 0
if $ARGV.length < 2
  source_files_mask = '*.jpg'
  #New Suffix
  new_suffix = ".png"

  print "Using GLOB PATTERN: ", source_files_mask, "\n"
  print "Using SUFFIX PATTERN: ", new_suffix, "\n"

else
  source_files_mask = $ARGV[0]
  print "Using GLOB PATTERN: ", $ARGV[0], "\n"
  new_suffix = $ARGV[1]
  print "Using SUFFIX PATTERN: ", new_suffix, "\n"
end

#Target directory - one level beneath source
target_dir = "new/"

# Create the target_dir if it does not exist
if !File.directory? target_dir
  # Error Handling
  begin
    Dir.mkdir target_dir
  rescue StandardError => err1
    print "IO MOVE ERROR WITH DIR: ", target_dir, "\n"
    print "HERE IS THE ERROR: ", err1, "\n"
    print "EXITING\n"
    exit 200
  end
end

#Generate Glob list (gets all the supplied files and places them into an array)
f0 = Dir.glob source_files_mask

if f0.length != 0
  f0.each { |i|
    print "ORIGINAL FILE NAME: ", i, "\n"

    puts "---"
    #split on various delimiters in the filename and tokenize it into an array
    j = i.split(/[_=+-.]/)
    puts j

    #Remove superfluous ARRAY elements from j
    j.delete("jpg")
    j.each { |x| x.downcase! }
    k = j.join "_"
    #Define New File Name and confirm that the interpolation is working first
    new_file_name = target_dir + k + new_suffix

    print "FINAL FILE NAME: ", new_file_name, "\n"

    #Exception Handling
    begin
      #Copy | Rename(Move) Step
      File.copy_stream(i, new_file_name)
    rescue StandardError => err1
      print "IO MOVE ERROR WITH FILE: ", i, "\n"
      print "HERE IS THE ERROR: ", err1, "\n"
      print "EXITING\n"
      exit 200
    end

    #This will do the same as above, but will actually move the entire file from it's original destination to the target_dir
    #File.rename(i, new_file_name)
  }
else
  puts "GLOB PATTERN IS EMPTY - EXITING"
  exit 200
end
