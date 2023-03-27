defmodule Lasagna do

  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(x) do
    expected_minutes_in_oven() - x
  end

  def preparation_time_in_minutes(number_of_layer) do
    number_of_layer * 2
  end

 def total_time_in_minutes(number_of_layer, number_of_minutes_the_lasagna_has_been_in_the_oven) do
  (number_of_layer * 2) + number_of_minutes_the_lasagna_has_been_in_the_oven
 end

  def alarm do
    "Ding!"
  end

end
