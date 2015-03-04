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
    old_balance = @balance
    @balance += amount
    transaction_details(old_balance, @balance)
  end

  def withdraw(amount)
    old_balance = @balance
    @balance -= amount
    transaction_details(old_balance, @balance)
  end

  protected

  def transaction_details(old_balance, new_balance)
    puts "Old balance: #{old_balance}"
    puts "New balance: #{new_balance}"
  end

end

cus = Customer.new('Oluwasegun')
puts cus.name, cus.balance, cus.account_no

cus1 = Customer.new('Adeleye')
puts cus1.name, cus1.balance, cus1.account_no

cus.deposit(1000)
cus1.deposit(2000)

puts cus.balance
puts cus1.balance

cus.withdraw(100)
cus1.withdraw(200)

puts "#{cus.name} with account number #{cus.account_no} now has an account balance of #{cus.balance}"
puts "#{cus1.name} with account number #{cus1.account_no} now has an account balance of #{cus1.balance}"
