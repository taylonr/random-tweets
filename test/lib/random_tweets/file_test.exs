defmodule FileTest do
    use ExUnit.Case
    alias RandomTweets.File

    test "Shoul return a string from the file" do
        line = File.get_line("test/fixtures/sample_text.txt")
        IO.puts line
        assert Enum.find_index(["line 1", "line 2", "line 3"], fn x -> x == line end) != nil
    end
end