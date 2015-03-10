require "../lib/time"

time = Time.new
time.sum("123:03:59", "23:03:59")
time.sum("21:59:59", "23:59:59")
time.sum("3:59:59", "3:06:09")
