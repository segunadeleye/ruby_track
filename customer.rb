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

  def deposit(amount)
    puts "Old balance: #{@balance}"
    puts "Amount Deposited: #{amount}"
    @balance += amount
    puts "New balance: #{@balance}"
  end

  def withdraw(amount)
    puts "Old balance: #{@balance}"
    puts "Amount Withdrawn: #{amount}"
    @balance -= amount
    puts "New balance: #{@balance}"
  end

end

cus = Customer.new('Oluwasegun')
puts cus.name, cus.balance, cus.account_no

cus1 = Customer.new('Adeleye')
puts cus1.name, cus1.balance, cus1.account_no

cus1.deposit(1000)
cus1.deposit(2000)

puts cus
puts cus1

puts cus.balance
puts cus1.balance
