defmodule Opposites do
  def inlove?(flower1, flower2) do
    rem(flower1, 2) !== rem(flower2, 2)
  end
end
