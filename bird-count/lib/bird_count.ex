defmodule BirdCount do
  def today(list), do:
    List.first(list)

  def increment_day_count([head | tail]), do:
    [head + 1 | tail]
  def increment_day_count([]), do: [1]

  def has_day_without_birds?(list) do
    if 0 in list do
      true
    else
      false
    end
  end

  def total(list), do:
    Enum.sum(list)

  def busy_days(list), do:
    Enum.count(list, fn x -> x > 4 end)
end
