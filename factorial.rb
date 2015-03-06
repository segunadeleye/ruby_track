class Factorial
  
  def calculate(int)
    numbers = Range.new(1, int)
    factorial = numbers.inject do |result, n|
      result * n
    end
    p factorial
  end

end

factorial = Factorial.new()
factorial.calculate(9)
