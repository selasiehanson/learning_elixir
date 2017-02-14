prefix =  fn a ->
            fn b -> "#{a}. #{b}" end
          end

IO.puts prefix.("Mr").("Smith")        
IO.puts prefix.("Dr").("Brown")        