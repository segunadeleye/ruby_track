class Fixnum
  
  def factorial
    factorial = 1
    unless self == 0
      factorial = (1..self).inject  { |product, n| product * n }
    end
    factorial
  end

end
