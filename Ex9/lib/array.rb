class Array

  def group_by_length
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
    hash
  end

end
