require "../lib/interest"

print "Enter Pricipal Amount: "
principal = gets.to_f
print "Enter Number of Years: "
time = gets.to_f

interest = Interest.new { |compound_interest, simple_interest| compound_interest - simple_interest }
interest.difference(principal, time)
