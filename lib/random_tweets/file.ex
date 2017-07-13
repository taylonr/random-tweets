defmodule RandomTweets.File do
    def get_line(path) do
        path
        |> get_contents
        |> Enum.random
    end

    defp get_contents(path) do
        path
        |> File.read!
        |> String.split(~r{\n})
        |> Enum.map(&String.strip/1)
        |> Enum.filter(fn x -> String.length(x) <= 140 end)
    end

    def reverse(l) do
        reverse(l, [])
    end
    def reverse([], reversed), do: reversed
    def reverse([head | tail], reversed), do: reverse(tail, [head | reversed])
end