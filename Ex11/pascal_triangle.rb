require_relative "factorial"

class PascalTriangle

  def pascal(x)
    (0..x).each { |n| yield n }
  end

end

pascal = PascalTriangle.new
factorial = Factorial.new

pascal.pascal(2) do |n|
  (0..n).each do |v|
    pascal = factorial.calculate(n) / (factorial.calculate(v) * factorial.calculate(n - v))
    print pascal, " "
  end
end
