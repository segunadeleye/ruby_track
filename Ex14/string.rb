class String
  
  def reverse
    word_list = split(/ /)
    word_list.reverse!
    reversed_statement = word_list.join(" ")
    puts reversed_statement
  end

end

"An apple a day keeps the doctor away".reverse
