defmodule RandomTweets do
    ExTwitter.configure(
        consumer_key: System.get_env("TWITTER_CONSUMER_KEY"),
        consumer_secret: System.get_env("TWITTER_CONSUMER_SECRET"),
        access_token: System.get_env("TWITTER_ACCESS_TOKEN"),
        access_token_secret: System.get_env("TWITTER_ACCESS_SECRET")
    )

    def start(_type, _args) do
        IO.puts "Start"
    end
end
