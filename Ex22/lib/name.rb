require_relative "first_name_error"
require_relative "empty_field_error"

class Name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def empty?(input)
    empty = true
    unless input.strip == ""
      empty = false
    end
    empty
  end

  def capitalized?(input)
    capitalized = true
    unless input.capitalize == input
      capitalized = false
    end
    capitalized
  end

  def validate
    raise EmptyFieldError, "Make sure there are no empty field." if empty?(@first_name) || empty?(@last_name)
    raise FirstNameError, "First letter of your first name must be capital." unless capitalized?(@first_name)
    puts "Valid input."
  end

end
