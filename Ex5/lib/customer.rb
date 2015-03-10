class Customer
  @@account_no = 0

  def initialize(name)
    @name = name
    @balance = 1000
    @account_no = @@account_no += 1
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
    puts "Account Holder: #{@name}"
    puts "Account Number: #{@account_no}"
    puts "Old balance: #{old_balance}"
    puts "New balance: #{new_balance}"
  end

end
