defmodule FileTest do
    use ExUnit.Case
    alias RandomTweets.File
    
    test "should provide an enum of text" do
        contents = File.get_contents("test/fixtures/sample_text.txt")
        assert contents == ["line 1", "line 2"]
    end
end