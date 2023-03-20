defmodule Lasagna do

  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven do
    40
  end

  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(x) do
    expected_minutes_in_oven() - x
  end

  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(number_of_layer) do
    number_of_layer * 2
  end

  # Please define the 'total_time_in_minutes/2' function
 def total_time_in_minutes(number_of_layer, number_of_minutes_the_lasagna_has_been_in_the_oven) do
  (number_of_layer * 2) + number_of_minutes_the_lasagna_has_been_in_the_oven
 end

  # Please define the 'alarm/0' function
  def alarm do
    "Ding!"
  end

end
