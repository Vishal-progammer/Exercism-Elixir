defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    power_pellet_active and touching_ghost
  end

  def score?(touching_power_pellet, touching_dot) do
    touching_power_pellet or touching_dot
  end

  def lose?(power_pellet_active, touching_ghost) do
    not power_pellet_active and touching_ghost
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    has_eaten_all_dots and not lose?(power_pellet_active, touching_ghost)
  end
end



  # 1. and/2 = If left is false, returns false; otherwise returns right.
  # 2. or/2 = If left is true, returns true; otherwise returns right.
  # 3. not/2 = not true and not false
