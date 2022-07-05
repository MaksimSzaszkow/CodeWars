defmodule SentenceSmasher do
  def smash(words) do
    words |> Enum.join " "
  end
end
