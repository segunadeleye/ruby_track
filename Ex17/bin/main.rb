require "../lib/sum_time"

time = SumTime.new

puts time.sum("123:03:59", "23:03:59")
puts time.sum("21:59:59", "23:59:59")
puts time.sum("3:59:59", "3:06:09")
