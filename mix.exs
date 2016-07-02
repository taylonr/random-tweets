defmodule RandomTweets.Mixfile do
  use Mix.Project

  def project do
    [app: :random_tweets,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: escript,
     deps: deps,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [ mod: {RandomTweets, []},
      applications: [:logger, :quantum, :oauth, :extwitter, :poison]]
  end

  def escript do
    [main_module: RandomTweets]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:mix_test_watch, "~> 0.2", only: :dev},
    {:oauth, github: "tim/erlang-oauth"},
    {:extwitter, "~> 0.7.1"},
    {:quantum, "~> 1.7"},
    {:exrm, "~> 1.0"}]
  end
end
