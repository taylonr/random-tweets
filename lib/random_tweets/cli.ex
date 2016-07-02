defmodule RandomTweets.CLI do
    @default_file "tweets.txt"

    def process do
        Path.join("#{:code.priv_dir(:random_tweets)}", @default_file)
        |> RandomTweets.File.get_line
        |> ExTwitter.update
    end

end