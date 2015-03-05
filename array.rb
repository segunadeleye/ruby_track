class Array

  def power(x)
    self.collect do |item|
      item ** x
    end
  end

end

puts [1, 2, 3, 4, 5, 6].power(3)
