defmodule TestWork do
  @moduledoc """
  This module has 2 tasks
  1) Remove every second number of list.
  2) Multiplacation every numbers of list to three.
  """

  def check(numbers) do
    numbers 
    |> remove_every_second() 
    |> List.flatten() 
    |> multiplication_by_three 
  end

  defp remove_every_second([]) do
    []
  end

  defp remove_every_second([head | tail]) do
    [head | remove_every_second(tail, :remove)]
  end

  defp remove_every_second([_ | tail], _remove) do
    [remove_every_second(tail)]
  end

  defp remove_every_second([], _remove) do
    []
  end

  defp multiplication_by_three(numbers) do
    Enum.map(numbers, &(&1 * 3))
  end
end

