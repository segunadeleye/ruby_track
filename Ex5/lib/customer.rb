class Customer
  @@account_no = 0

  def initialize(name)
    @@account_no += 1
    @account_no = @@account_no
    @name = name
    @balance = 1000
  end

  def deposit(amount)
    if amount >= 0
      old_balance = @balance
      @balance += amount
      show_transaction_details(old_balance)
    else
      puts "Amount must be greater than 0."
    end
  end

  def withdraw(amount)
    if amount <= 0
      puts "Amount must be greater than 0."
    elsif amount > @balance
      puts "You do not have sufficient funds."
    else
      old_balance = @balance
      @balance -= amount
      show_transaction_details(old_balance)
    end
  end

  protected

  def show_transaction_details(old_balance)
    puts "Account Holder: #{@name}"
    puts "Account Number: #{@account_no}"
    puts "Old balance: #{old_balance}"
    puts "New balance: #{@balance}"
  end

end
