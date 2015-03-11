require "../lib/sum_time"

time = SumTime.new
puts time.sum("9:03:59", "23:03:59", "3:59:59", "23:59:59", "3:09:59", "3:59:59")
