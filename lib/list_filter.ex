defmodule ListFilter do
 def call(list) do
  new_list = Enum.flat_map(list, fn list ->
              case Integer.parse(list) do
                # transform to integer
                {int, list} -> [int]
                # skip the value
                :error -> []
              end
            end)
  Enum.filter(new_list, fn x -> rem(x, 2) == 1 end)
 end
end
