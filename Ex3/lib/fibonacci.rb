class Fibonacci
  
  def calculate_series(max)
    i1, i2 = 0, 1
    until i1 > max
      yield i1
      i1, i2 = i2, i1 + i2
    end
  end

end
