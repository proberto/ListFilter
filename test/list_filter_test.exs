defmodule ListFilterTest do
  use ExUnit.Case
  describe "call/1" do
    test "return elements enumerable odd" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]


      assert ListFilter.call(list1) == [1, 3, 43]
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == []
    end
  end

end
