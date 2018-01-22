#Loop based on numeric method:
num = 1
25.times do
  print num.class, " ", num, "\n"
   num *= 10
end

#Loop based on numeric method: upto()
#Note: This example does NOT increment 'num' per iteration
num = 1
print "\nUPTO: "
num.upto(15) { |i| print i.class, " ", i, "\n" }

#Loop based on numeric method: downto()
num = 15
print "\nDOWNTO: "
num.downto(2) { |i| print i, " " }

#Loop based on numeric method step():
num = 0
print "\n"
num.step(100,5) { |i| print i, " "}

#Traditional 'for' loop
print "\nFOR: "
for i in 1..15
  print i, " "
end

#Traditional 'while' loop
print "\nWHILE: "
count = 1
while count <= 10
  print count, " "
  count +=1
end

#Define list and iterate
products = ["BASH", "WinPerl", "WinPHP", "BASH" "WinPython", "WinAwk-Sed", "PowerShell", "Ruby"]
print "\n"
products.each do |i|
  puts i
end

print "\n"
products.uniq.sort.each { |i| print i, " "}

print "\n"

#Define hash and iterate
prodsVers =
{
  'BASH' => '4x',
  'WinPerl' => '5x',
  'WinPython' => '2x'
}

prodsVers.keys.each {|_| puts _ }

prodsVers.values.each {|_| puts _ }
