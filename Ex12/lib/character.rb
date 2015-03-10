class Character

  LOWERCASE = "a".."z"
  UPPERCASE = "A".."Z"
  DIGIT = "0".."9"

  def count(string)
    lowercase_count, uppercase_count, digit_count, special_character_count = 0, 0, 0, 0
    string.each_char do |character|
      case character
      when LOWERCASE then lowercase_count += 1
      when UPPERCASE then uppercase_count += 1
      when DIGIT then digit_count += 1
      else special_character_count += 1
      end
    end

    puts "Number of lowercase characters: #{lowercase_count}",
         "Number of uppercase characters: #{uppercase_count}",
         "Number of digits: #{digit_count}",
         "Number of special characters: #{special_character_count}"
  end
end

character = Character.new
character.count("Where is the MONEY i 232 !@#\{4+4}$%^}")