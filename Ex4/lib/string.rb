class String

  def check_palindrome
    unless self == "q" || self == "Q"
      if palindrome?
        "The word '#{self}' is a palindrome."
      else
        "The word '#{self}' is not a palindrome."
      end
    end
  end

  private

  def palindrome?
    self == reverse
  end

end
