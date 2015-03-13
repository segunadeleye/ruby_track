require_relative "../lib/customer"

customer1 = Customer.new('Oluwasegun')
customer2 = Customer.new('Adeleye')

customer1.deposit(1000)

customer2.deposit(2000)

customer1.withdraw(100)

customer2.withdraw(2000000)
