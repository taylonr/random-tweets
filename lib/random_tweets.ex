defmodule RandomTweets do
    defp configure_twitter() do
        ExTwitter.configure(
            consumer_key: System.get_env("ELIXIR_TWITTER_CONSUMER_KEY"),
            consumer_secret: System.get_env("ELIXIR_TWITTER_CONSUMER_SECRET"),
            access_token: System.get_env("ELIXIR_TWITTER_ACCESS_TOKEN"),
            access_token_secret: System.get_env("ELIXIR_TWITTER_ACCESS_SECRET")
        )
    end

    def start(_type, args) do
        configure_twitter()
        Supervisor.start_link [], strategy: :one_for_one
    end

    #def main(args) do
    #    configure_twitter()
    #    Supervisor.start_link [], strategy: :one_for_one
    #end
end
