class CaseInverter

  def initialize(string)
    @string = string
    invert@string
  end

  def to_s
    "#{@string} -> #{@string.swapcase}"
  end

  def invert(string)
    puts string
  end

end

ci_1 = CaseInverter.new("hello WORLD")
ci_2 = CaseInverter.new("iT iS a gREAT dAY tODAY.")

puts ci_1
puts ci_2
