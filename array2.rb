class Array

  def sort_by_length
    hash = Hash.new()
    self.each do |item|
      key = item.to_s.length
      if hash.has_key?(key)
        hash[key].push(item)
      else
        hash[key] = []
        hash[key].push(item)
      end
    end
    puts hash
  end

end

['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ'].sort_by_length
