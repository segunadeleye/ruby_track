class Array

  def reverse_iterate
    for i in 1..length
      yield self[-i]
    end
  end

end
