defmodule Chop do
    def guess(n, (l..h) when l >= h; do: n 
    def guess(n, (l..h) when n > l  do
        guess(n, (l, l + div(h,2))
    end
    def guess(n, (l..h) when n < h  do
        guess(n, (l, l + div(h,2))
    end
end