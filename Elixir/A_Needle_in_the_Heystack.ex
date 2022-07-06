defmodule Finder do
  def find_needle(haystack) do
    haystack |>
    Enum.find_index(fn elem -> elem === "needle" end) |>
    (fn position -> "found the needle at position #{position}" end).()
  end
end
