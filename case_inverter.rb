class CaseInverter

  def initialize(string)
    @string = string
  end

  def to_s
    "#{@string} -> #{@string.swapcase}"
  end

end

puts CaseInverter.new("hello WORLD")
puts CaseInverter.new("iT iS a gREAT dAY tODAY.")
