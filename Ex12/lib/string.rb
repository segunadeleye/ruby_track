class String

  LOWERCASE = "a".."z"
  UPPERCASE = "A".."Z"
  DIGIT = "0".."9"

  def count_characters
    count = Hash.new(0)
    each_char do |character|
      case character
      when LOWERCASE then count[:lowercase] += 1
      when UPPERCASE then count[:uppercase] += 1
      when DIGIT then count[:digit] += 1
      else count[:special_character] += 1
      end
    end
    count
  end

end
