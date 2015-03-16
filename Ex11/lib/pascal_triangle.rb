class PascalTriangle

  def draw(max)
    (0..max).each do |row|
      (0..row).each { |number| yield row, number }
    end
  end

end
