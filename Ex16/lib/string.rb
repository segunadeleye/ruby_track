class String

  def search(keyword)
    pattern = Regexp.new(keyword, true)

    if self =~ pattern
      gsub!(pattern) { |match| "(#{match})" }
      occurrence = scan(pattern).size
      result = "#{self} | Total occurrences found: #{occurrence}"
    else
      result = "#{keyword} not found in the text."
    end
  end

end
