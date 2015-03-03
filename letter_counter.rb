class LetterCounter

	def count_occurence_of_letters(string)
		letters = get_letters_in_string(string)

	  counts = Hash.new(0)
	  for letter in letters
	    counts[letter] += 1
	  end
	  puts counts
	end

	def get_letters_in_string(string)
	  string.downcase.scan(/[a-z]/)
	end


end

letter_counter = LetterCounter.new
letter_counter.count_occurence_of_letters("There is a lot going on in this place that if you are not observative enough, you would just be left behind.")
letter_counter.count_occurence_of_letters("Count the ocurrences of various alphabet letters in an input string and store it in hash.")
