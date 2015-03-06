class Array

  def sort_by_type
    hash = Hash.new()
    each do |item|
      key = item.to_s.length
      if hash.has_key?(key)
        hash[key].push(item)
      else
        hash[key] = []
        hash[key].push(item)
      end
    end
    hash = hash.inject({:odd => [], :even => []}) do |a, b|
      a[:odd] << b[1] if b[0].odd?
      a[:even] << b[1] if b[0].even?
      a
    end
    p hash
  end

end

['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ'].sort_by_type
