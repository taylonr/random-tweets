defmodule RandomTweets.CLITest do
    use ExUnit.Case
    import RandomTweets.CLI, only: [parse_args: 1, run: 1]

    test ":help returned by option parsing with -h and --help options" do
        assert parse_args(["-h", "anything"]) == :help
        assert parse_args(["--help", "anything"]) == :help
    end

    test "Should return the file name passed in" do
        assert parse_args(["file.txt"]) == {"file.txt"}
    end

    test "When -h is passed in should show help" do
        assert run(["-h"]) == """
        usage: random_tweets filename
        """
    end    
end