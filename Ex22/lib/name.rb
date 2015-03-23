require_relative "first_name_error"
require_relative "empty_field_error"

class Name

  def initialize(first_name, last_name)
    validate(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def capitalized?(input)
    input.capitalize == input
  end

  def validate(first_name, last_name)
    raise EmptyFieldError, "Make sure there are no empty field." if first_name.empty? || last_name.empty?
    raise FirstNameError, "First letter of your first name must be capital." unless capitalized?(first_name)
  end

end
