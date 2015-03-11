class Array

  def group_by_length
    hash = Hash.new { |hash, key| hash[key] = [] }
    each do |item|
      key = item.to_s.length
      hash[key] << item
    end
    hash
  end

end
