defmodule PrimesInNumbers do

  def divide(arr, n, div) do
    if(n < div) do
      arr
    else
      if(rem(n, div) === 0) do
        PrimesInNumbers.divide([div | arr], Kernel.trunc(n/div), div)
      else
        PrimesInNumbers.divide(arr, n, div + 1)
      end
    end
  end

  def stringify(num, count) do
    if(count === 1) do
      "(#{num})"
    else
      "(#{num}**#{count})"
    end
  end

  def prime_factors(n) do
    IO.puts(n)
    dividers = PrimesInNumbers.divide([], n, 2) |>
    Enum.reverse |>
    Enum.with_index
    first_elem = Enum.at(dividers, 0)

    Enum.reduce(dividers, {Kernel.elem(first_elem, 0), 0, ""},
    fn x, {y, count, string} ->
      num = Kernel.elem(x, 0)
      index = Kernel.elem(x, 1)

      case {num === y, index === Enum.count(dividers) - 1} do
        {true, false} -> {y, count + 1, string}
        {false, false} -> {num, 1, string <> PrimesInNumbers.stringify(y, count)}

        {true, true} -> {y, count + 1, string <> PrimesInNumbers.stringify(y, count + 1)}
        {false, true} -> {y, count + 1, string <> PrimesInNumbers.stringify(y, count) <> PrimesInNumbers.stringify(num, 1)}
      end
    end) |>
    Kernel.elem(2)
  end

end
