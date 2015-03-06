class String

  def get_string
    puts "Enter string to look through."
    string = gets.chomp
  end

  def get_keyword
    puts "Enter what to look for."
    keyword = gets.chomp
  end

  def search
    string = get_string
    keyword = get_keyword
    pattern = Regexp.new(keyword, true)

    if string =~ pattern
      string.gsub!(pattern) { |match| "(#{match})" }
      occurrence = string.scan(pattern).size
      result = "#{string} | Total occurrences found: #{occurrence}"
    else
      result = "#{keyword} not found in the string."
    end
  end

end

a = String.new
a.search
