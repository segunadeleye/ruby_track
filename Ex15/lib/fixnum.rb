require "prime"
class Fixnum

  def find_prime_numbers_upto
    prime_numbers = []
    (2..self).step { |n| prime_numbers << n if n.prime? }
    prime_numbers
  end

end
