# RandomTweets

This tweets out a random tweet selected from the `tweets.txt` file. It does this on a schedule, using Quantum's cron scheduler. Current settings are 1, 2, 13 and 25th of each month at 18:10UTC

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add random_tweets to your list of dependencies in `mix.exs`:

        def deps do
          [{:random_tweets, "~> 0.0.1"}]
        end

  2. Ensure random_tweets is started before your application:

        def application do
          [applications: [:random_tweets]]
        end

