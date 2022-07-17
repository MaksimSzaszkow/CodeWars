defmodule TribonacciSequence do

  def calculate(numbers, n) do
    if(n === 0)do
      []
    else
      if(Enum.count(numbers) >= n) do
        Enum.slice(numbers, 0..(n - 1))
      else
        TribonacciSequence.calculate([
          Enum.at(numbers, 0) +
          Enum.at(numbers, 1) +
          Enum.at(numbers, 2) |
          numbers], n)
      end
    end
  end

  @spec tribonacci({number, number, number}, non_neg_integer) :: [number]
  def tribonacci(signature, n) do
    TribonacciSequence.calculate(Tuple.to_list(signature) |> Enum.reverse, n) |> Enum.reverse
  end
end
