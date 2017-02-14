fizzbuzz = fn 
		(0, _, _) -> "Fizz"
		(_, 0, _) -> "Buzz"
		(_, _, c) -> c
end

IO.puts fizzbuzz.(0,1,2)
IO.puts fizzbuzz.(1,0,2)
IO.puts fizzbuzz.(3,2,2)
