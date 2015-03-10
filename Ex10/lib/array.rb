class Array

  def group_by_type
    hash = group_by { |n| n.to_s.length }
    hash = hash.inject({:odd => [], :even => []}) do |a, b|
      a[:odd] << b[1] if b[0].odd?
      a[:even] << b[1] if b[0].even?
      a
    end
    hash
  end

end
