require_relative "negative_number_error"

class Factorial
  
  def calculate(n)
    factorial = 1
    raise NegativeNumberError if n < 0
    unless n == 0
      factorial = (1..n).inject  { |product, n| product * n }
    end
    "#{n}! = #{factorial}"
    rescue
      "#{n} is an invalid number. You can't have a negative integer."
  end

end
