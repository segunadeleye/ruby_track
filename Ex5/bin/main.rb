require "../lib/customer"

cus = Customer.new('Oluwasegun')
cus1 = Customer.new('Adeleye')

cus.deposit(1000)
puts "********************"
cus1.deposit(2000)
# puts "********************"
# cus.withdraw(100)
# puts "********************"
# cus1.withdraw(2000000)
