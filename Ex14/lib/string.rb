class String
  
  def reverse
    word_list = split(/ /)
    word_list.reverse!
    reversed_sentence = word_list.join(" ")
    puts reversed_sentence
  end

end

"An apple a day keeps the doctor away".reverse