class Customer
  @@account_no = 0
  attr_reader :account_no
  attr_accessor :name, :balance

  def initialize(name)
    @@account_no += 1
    @name = name
    @balance = 1000
    @account_no = @@account_no
  end

end

cus = Customer.new('Oluwasegun Adeleye')
puts cus.name, cus.balance, cus.account_no

cus1 = Customer.new('Oluwasegun Adeleye')
puts cus1.name, cus1.balance, cus1.account_no
