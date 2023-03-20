defmodule FreelancerRates do
 def daily_rate(hourly_rate), do: hourly_rate * 8.0


  def apply_discount(before_discount, discount_percent), do:
    before_discount - before_discount * discount_percent / 100

  def monthly_rate(hourly_rate, discount), do:
   ceil(hourly_rate * 8 * 22 - discount/100 * hourly_rate * 8 * 22)

 def days_in_budget(budget, hourly_rate, discount) do
    a = 8 * hourly_rate
    discount_per_day = a * discount / 100
    after_discounted_per_day = a - discount_per_day
    Float.floor((no_of_days = budget/after_discounted_per_day), 1)
  end
  end
