defmodule MyList do
    # Implementations using accumulator 
    # def sum(list), do: _sum(list, 0)
    # defp _sum([], total), do: total
    # defp _sum([head | tail], total), do: _sum(tail, head + total)

    
    #implementation without accumulator
    def sum(list), do: _sum(list)

    defp _sum([]), do: 0
    defp _sum([head|tail]), do: head + _sum(tail)

    # genearlized reduce
    def reduce([], value, _), do: value
    def reduce([head|tail], value, func) do
        reduce(tail, func.(head ,value),func) 
    end
end