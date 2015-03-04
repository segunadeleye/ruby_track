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
    if amount < @balance
      old_balance = @balance
      @balance -= amount
      transaction_details(old_balance, @balance)
    else
      puts "You do not have sufficient funds."
    end
  end

  protected

  def transaction_details(old_balance, new_balance)
    puts "Old balance: #{old_balance}"
    puts "New balance: #{new_balance}"
  end

end

cus = Customer.new('Oluwasegun')
cus1 = Customer.new('Adeleye')

puts cus.name, cus.balance, cus.account_no
puts "********************"
puts cus1.name, cus1.balance, cus1.account_no
puts "********************"
cus.deposit(1000)
puts "********************"
cus1.deposit(2000)
puts "********************"
cus.withdraw(100)
puts "********************"
cus1.withdraw(2000000)
puts "********************"
puts "#{cus.name} with account number #{cus.account_no} now has an account balance of #{cus.balance}"
puts "#{cus1.name} with account number #{cus1.account_no} now has an account balance of #{cus1.balance}"
