require "time"

class SumTime

  TIME_PATTERN = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/

  def sum(*a)
    total_seconds = 0
    a.each do |time|
      match = TIME_PATTERN.match(time)
      if match
        seconds = convert_to_seconds(match)
        total_seconds += seconds
      else
        return "#{time} is not a valid 24-hour time value."
      end
    end
    display_result(total_seconds)
  end

  def display_result(seconds)
    days = seconds / 86400
    remaining_seconds = seconds % 86400
    time = Time.at(remaining_seconds).utc.strftime("%T")
    day = "#{days} day & " if days > 0
    "#{day}#{time}"
  end

  def convert_to_seconds(time)
    (time[1].to_i * 3600) + (time[2].to_i * 60) + (time[3].to_i)
  end

end
