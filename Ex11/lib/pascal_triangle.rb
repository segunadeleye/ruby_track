class PascalTriangle

  def pascal(x)
    (0..x).each do |n|
      (0..n).each { |v| yield n, v }
    end
  end

end
