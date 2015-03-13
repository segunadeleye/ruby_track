require_relative "../lib/vehicle"
require_relative "../lib/bike"

bike = Bike.new('Hero', 3000, 'Chisco')
bike.details
bike.change_price(2000)
bike.details
