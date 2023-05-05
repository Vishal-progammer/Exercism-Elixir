defmodule CollatzConjecture do
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(1), do: 0
  def calc(input) when input > 0 and rem(input, 2) != 0, do: 1 + calc(input * 3 + 1)
  def calc(input) when input > 0 and rem(input, 2) == 0, do: 1 + calc(div(input, 2))  
end
