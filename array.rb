class Array

  def power(x)
    p self.collect! { |item| item ** x }
  end

end

[1, 2, 3, 4, 5, 6].power(3)
