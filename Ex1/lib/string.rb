class String

  NON_LETTER_PATTERN = /[^a-z]/i

  def count_occurence_of_letters
    counts = Hash.new(0)
    remove_non_letters.each_char do |letter|
      counts[letter] += 1
    end
    counts
  end

  def remove_non_letters
    gsub(NON_LETTER_PATTERN, "")
  end

end
