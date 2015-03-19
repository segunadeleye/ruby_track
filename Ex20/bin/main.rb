require_relative "../lib/interest"

print "Enter Pricipal Amount: "
principal = gets.to_f
print "Enter Number of Years: "
time = gets.to_f

interest = Interest.new do |interest|
  interest.principal = principal
  interest.time = time
end
puts "The difference between the compound interest and the simple interest is #{interest.difference}."
