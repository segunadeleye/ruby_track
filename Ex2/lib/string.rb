class String

  VOWEL_PATTERN = /[aeiou]/i

  def replace_vowels
    gsub(VOWEL_PATTERN, "*")
  end

end
