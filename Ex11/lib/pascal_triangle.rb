require_relative "factorial"

class PascalTriangle

  def pascal(x)
    (0..x).each do |n|
      (0..n).each { |v| yield n, v }
    end
  end

end

pascal = PascalTriangle.new
factorial = Factorial.new

pascal.pascal(6) do |n, v|
  pascal = factorial.calculate(n) / (factorial.calculate(v) * factorial.calculate(n - v))
  print pascal, " "
end
