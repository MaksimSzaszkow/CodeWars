defmodule Josephus do
  def permutation(items, k) do
    if Enum.count(items) > 0 do
      Josephus.permutate(
        items,
        [],
        k - 1,
        rem(k - 1, Enum.count(items))
      )
    else
      items
    end
  end

  def permutate(input, output, k, index) do
    {poppedVal, newInput} = List.pop_at(input, index)

    if Enum.count(newInput) > 0 do
      Josephus.permutate(
        newInput,
        [poppedVal | output],
        k,
        rem(index + k, Enum.count(newInput))
      )
    else
      Enum.reverse([poppedVal | output])
    end
  end
end
