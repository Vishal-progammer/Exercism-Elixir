defmodule LanguageList do
  def new() do
    []
  end

  def add(list, lang) do
    [lang | list]
    # dout about how it is working
  end
  def remove(list) do
    tl(list)
  end

  def first(list) do
    hd(list)
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
