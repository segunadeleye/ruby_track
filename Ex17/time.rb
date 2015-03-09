class Time

  TIME_PATTERN = /^([0-2]?[0-3]|[0-1][0-9]):([0-5][0-9]):([0-5][0-9])/

  def sum(a, b)
    a = TIME_PATTERN.match(a)
    b = TIME_PATTERN.match(b)
    if a && b
      total_seconds = a[3].to_i + b[3].to_i
      total_minutes = a[2].to_i + b[2].to_i + (total_seconds / 60)
      total_hours = a[1].to_i + b[1].to_i + (total_minutes / 60)
      total_day = total_hours / 24
    else
      return "Make sure the time is valid."
    end

    seconds = total_seconds % 60
    minutes =  total_minutes % 60
    hours = total_hours % 24
    day = ""
    day = "#{total_day} day & " if total_day > 0

    "#{day}#{hours}:#{0 if minutes < 10}#{minutes}:#{0 if seconds < 10}#{seconds}"
  end

end

time = Time.new
time.sum("123:03:59", "23:03:59")
time.sum("24:59:59", "23:59:59")
time.sum("3:59:59", "3:60:09")
