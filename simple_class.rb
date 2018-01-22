#!/Users/deron/.rvm/rubies/ruby-2.4.1/bin/ruby
class ChangeCase
  def initialize(var1 = "Something", var2 = "Unknown")
    #Retrieve external var1 and set to instance @var1 (declares a local instance of var1)
    @var1 = var1.to_s
    @var1 = @var1.strip!
    @var2 = var2.to_s
    @var2 = @var2.strip!
  end

  #METHOD to UPPERCASE VARs
  #This will not receive information exogenously
  def upper
    # In-place update of @var1
    @var1_upper = @var1.upcase
    @var2_upper = @var2.upcase
    # Dump to STDOUT the differences in contents across @var1 and @var2
    print @var1, "\t", @var1_upper, "\t", @var2, "\t", @var2_upper, "\n"
  end

  # Method to lowercase
  def lower
    # In-place update of @var1
    @var1_lower = @var1.downcase
    @var2_lower = @var2.downcase

    # Dump to STDOUT the differences in contents across @var1 and @var2
    print @var1, "\t", @var1_lower, "\t", @var2, "\t", @var2_lower, "\n"
  end

  #Method to swapcase
  def swapcase
    # In-place update of @var1
    @var1_swap = @var1.swapcase
    @var2_swap = @var2.swapcase

    # Dump to STDOUT the differences in contents across @var1 and @var2
    print @var1, "\t", @var1_swap, "\t", @var2, "\t", @var2_swap, "\n"
  end
end

#instantiate class ChangeCase
cc = ChangeCase.new("\t\nCats\t\n", "\tOn Broadway\t")

cc.upper
cc.lower
cc.swapcase
