class Replacement

  REGEX_PATTERN = /[aeiou]/i
  
  def get_input
    puts "Please enter text here: "
    input = gets
  end

  def replace_first_vowel
    input = get_input
    output = input.sub(REGEX_PATTERN, "*")
    puts "Using sub: #{output}"
  end

  def replace_all_vowel
    input = get_input
    output = input.gsub(REGEX_PATTERN, "*")
    puts "Using sub: #{output}"
  end

end

replace = Replacement.new
replace.replace_first_vowel
replace.replace_all_vowel
