defmodule LogLevel do
  def to_label(level, legacy) do
    case {level, legacy} do
      {0, false} -> :trace
      {1, _} -> :debug
      {2, _} -> :info
      {3, _} -> :warning
      {4, _} -> :error
      {5, false} -> :fatal
      _ -> :unknown
    end
  end

  # def alert_recipient(level, legacy) do
  #   case {level, legacy} do
  #   {4, _} -> :_ops_team
  #   {5, false} -> :_dev1_team
  #   _ -> :dev2_team
  #   end
  # end

  @spec alert_recipient(any, any) :: :dev1 | :dev2 | false | :ops
  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    label = to_label(level, legacy?)
    cond do
      label == :error or label == :fatal -> :ops
      label == :unknown and legacy? -> :dev1
      label == :unknown -> :dev2
      true -> false
    end
  end
end
