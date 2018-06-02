defmodule TestWorkTest do
  use ExUnit.Case
  doctest TestWork

  test "check/1 not empty list" do
    assert TestWork.check([6, 1, 12, 5, 7]) == [18, 36, 21] 
  end

  test "check/1 with empty list" do
    assert TestWork.check([]) == []
  end
end

