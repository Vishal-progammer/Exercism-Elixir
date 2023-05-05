defmodule KitchenCalculator do
  def get_volume(volume_pair), do:
    elem(volume_pair, 1)

  def to_milliliter({:milliliter, _volume}), do:
    {:milliliter, _volume}

  def to_milliliter({:cup, _volume}), do:      
    {:milliliter, _volume * 240}

  def to_milliliter({:fluid_ounce, _volume}), do: 
    {:milliliter, _volume * 30}

  def to_milliliter({:teaspoon, _volume}), do:
    {:milliliter, _volume * 5}

  def to_milliliter({:tablespoon, _volume}), do:
    {:milliliter, _volume * 15}

   def from_milliliter({:milliliter, _volume}, unit) when unit == :milliliter, do:
  {:milliliter, _volume}

  def from_milliliter({:milliliter, _volume}, unit) when unit == :cup, do:
  {:cup, _volume/240}

   def from_milliliter({:milliliter, _volume}, unit) when unit == :fluid_ounce, do:
  {:fluid_ounce, _volume/30}

   def from_milliliter({:milliliter, _volume}, unit) when unit == :teaspoon, do:
  {:teaspoon, _volume/5}

   def from_milliliter({:milliliter, _volume}, unit) when unit == :tablespoon, do:
  {:tablespoon, _volume/15}

  def convert(volume_pair, unit) do
    converted_milliliters = to_milliliter(volume_pair)
    from_milliliter(converted_milliliters, unit)
  end
end

