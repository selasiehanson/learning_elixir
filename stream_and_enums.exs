s = Stream.map [1,2,3,4,5], &(&1 + 1)

s |> Enum.to_list

IO.puts "-------------------------"
# squares = Stream.map [1,2,3,4,], &(&1 * &1)

# plus_ones = Stream.map squares, &(&1 + 1)

# odds = Stream.filter plus_ones, fn x -> rem(x,2) == 1 end

# Enum.to_list odds


IO.puts "---------------------------"

# Simplified as

[1,2,3,4]
|> Stream.map(&(&1 * &1))
|> Stream.map(&(&1 + 1))
|> Stream.filter(fn x -> rem(x,2) == 1 end)
|> Enum.to_list

File.open!("./stream_and_enums.exs")
|> IO.stream(:line)
|> Enum.max_by(&String.length/1)

Enum.map(1..10_000_000, &(&1 + 1)) |> Enum.take(5)
Stream.map(1..10_000_000, &(&1 + 1)) |> Enum.take(5)

aa = [%{a: 1, x: 4}, %{b: 2, x: 4}, %{c: 3, x: 4}]
1..Enum.count(aa) |> Enum.map( &(&1 +1 ))
ids = (1..Enum.count(aa)) |>  Enum.map &(%{id: &1}) 


#  aai = Enum.with_index(aa, 1)
#  Enum.map aai, fn {x, y} ->  Map.put(x, :id, y) end

aa |> Enum.with_index( 1) |> Enum.map fn {x, y} ->  Map.put(x, :id, y) end