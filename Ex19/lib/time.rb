class Time

  TIME_PATTERN = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/

  def sum(*a)
    total_seconds, total_minutes, total_hours = 0, 0, 0
    a.each do |time|
      match = TIME_PATTERN.match(time)
      puts match
      if match
        seconds = match[3].to_i
        minutes = match[2].to_i
        hours = match[1].to_i
        total_seconds += seconds
        total_minutes += minutes
        total_hours += hours
      else
        return "#{time} is not a valid 24-hour time value."
      end
    end

    total_minutes += total_seconds / 60
    total_hours += total_minutes / 60
    total_day = total_hours / 24
    
    seconds = total_seconds % 60
    minutes =  total_minutes % 60
    hours = total_hours % 24
    day = ""
    day = "#{total_day} day & " if total_day > 0

    "#{day}#{hours}:#{0 if minutes < 10}#{minutes}:#{0 if seconds < 10}#{seconds}"
  end

end
