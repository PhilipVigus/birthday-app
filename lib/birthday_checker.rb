class Checker
  def is_birthday_today?(day, month)
    day_today = Time.now.day.to_s
    month_today = Time.now.month.to_s

    if day_today == day && month_today == month
      true
    else
      false
    end
  end
end