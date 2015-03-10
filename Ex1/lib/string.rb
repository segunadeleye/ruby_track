class String

  LETTER_PATTERN = /[a-z]/

  def count_occurence_of_letters
    counts = Hash.new(0)
    each_char do |character|
      counts[character] += 1 if character =~ LETTER_PATTERN
    end
    counts
  end

end
