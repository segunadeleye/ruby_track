require "time"

class SumTime

  TIME_PATTERN = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/

  def sum(a, b)
    a = TIME_PATTERN.match(a)
    b = TIME_PATTERN.match(b)
    if a && b
      total_seconds = convert_to_seconds(a) + convert_to_seconds(b)
      display_result(total_seconds)
    else
      "Make sure the inputs are valid 24-hour time values."
    end
  end

  def convert_to_seconds(time)
    (time[1].to_i * 3600) + (time[2].to_i * 60) + (time[3].to_i)
  end

  def display_result(seconds)
    days = seconds / 86400
    remaining_seconds = seconds % 86400
    time = Time.at(remaining_seconds).utc.strftime("%T")

    day = "#{days} day & " if days > 0
    "#{day}#{time}"
  end

end
