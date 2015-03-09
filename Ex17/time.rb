class Test

  TIME = /(\d?\d):(\d\d):(\d\d)/

  def sum(a, b)
    a = TIME.match(a)
    b = TIME.match(b)

    if a && b
      add_sec = Integer(a[3]) + Integer(b[3])
      add_min = Integer(a[2]) + Integer(b[2]) + (add_sec / 60)
      add_hrs = Integer(a[1]) + Integer(b[1]) + (add_min / 60)
      add_day = add_hrs / 24

      sec = add_sec % 60
      mins =  add_min % 60
      hrs = add_hrs % 24
      day = ""
      day = "#{add_day} day & " if add_day > 0
      # "Days: #{day}. Hours: #{hrs}. Minutes: #{0 if mins < 10}#{mins}. Seconds:#{0 if sec < 10}#{sec}"
      "#{day}#{hrs}:#{mins}:#{sec}"
    end
  end

end

test = Test.new
test.sum("23:03:59", "23:03:59")
test.sum("3:59:59", "23:59:59")
test.sum("3:59:59", "3:59:59")
