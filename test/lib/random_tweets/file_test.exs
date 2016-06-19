defmodule FileTest do
    use ExUnit.Case
    alias RandomTweets.File

    test "Should return a string from the file" do
        line = File.get_line("test/fixtures/sample_text.txt")
        assert Enum.find_index(["line 1", "line 2", "line 3"], fn x -> x == line end) != nil
    end

    test "Should strip out any text longer than 140 characters" do        
        assert_raise Enum.EmptyError, fn ->
            File.get_line("test/fixtures/too_long.txt")
        end
    end
end