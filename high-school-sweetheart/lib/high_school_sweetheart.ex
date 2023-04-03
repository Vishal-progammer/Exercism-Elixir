defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim_leading(name)
    |> String.first()
  end

  def initial(name) do  
    a = String.first(name)
    |> String.capitalize()
    a <> "."
  end

  def initials(full_name) do
    [first_name, last_name] = String.split(full_name)
    "#{initial(first_name)} #{initial(last_name)}"
  end

  def pair(full_name1, full_name2) do
 "     ******       ******\n   **      **   **      **\n **         ** **         **\n**            *            **\n**                         **\n**     #{initials(full_name1)}  +  #{initials(full_name2)}     **\n **                       **\n   **                   **\n     **               **\n       **           **\n         **       **\n           **   **\n             ***\n              *\n"
  end
end
