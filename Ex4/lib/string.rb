class String

  def check
    unless self == "q" || self == "Q"
      if palindrome?(self)
        "The word '#{self}' is a palindrome."
      else
        "The word '#{self}' is not a palindrome."
      end
    end
  end

  private

  def palindrome?(input)
    input == input.reverse
  end

end
