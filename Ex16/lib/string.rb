class String

  def search(keyword)
    pattern = Regexp.new(keyword, true)

    occurrence = 0
    gsub!(pattern) do |match|
      occurrence += 1
      "(#{match})"
    end

    if occurrence > 0
      result = "#{self} | Total occurrences found: #{occurrence}"
    else
      result = "#{keyword} not found in the text."
    end
  end

end
