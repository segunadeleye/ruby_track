class Palindrome

  def get_input
    puts "This application checks if a word is a palindrome."
    puts "Please enter a word here or enter q/Q to quit"
    input = gets.chomp
  end

  def palindrome?(input)
    input == input.reverse
  end

  def check
    input = get_input
    unless input == "q" || input == "Q"
      if palindrome?(input)
        puts "The word #{input} is a palindrome."
      else
        puts "The word #{input} is not a palindrome."
      end
    end
  end

end

palindrome = Palindrome.new
palindrome.check
