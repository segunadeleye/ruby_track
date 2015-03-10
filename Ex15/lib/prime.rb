class Prime
  require "prime"

  def find_upto(n)
    prime_numbers = []
    (0..n).step { |n| prime_numbers << n if n.prime? }
    prime_numbers
  end

end

prime = Prime.new
prime.find_upto(25)
