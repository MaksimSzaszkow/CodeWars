defmodule Kata do
  def past(h, m, s) when 
    0 <= h and h <= 23 and 
    0 <= m and m <= 59 and 
    0 <= s and s <= 59 do
    (h * 60 * 60 + m * 60 + s) * 1000
  end
end
