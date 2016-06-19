defmodule RandomTweets.File do    
    def get_contents(path) do
        path
        |> File.read!
        |> String.split(~r{\n})
        |> Enum.map(&String.strip/1)
    end
end