defmodule RandomTweets.CLI do
    def run(argv) do
        parse_args(argv)
        |> process
    end

    def process(:help) do
        """
        usage: random_tweets filename
        """
    end

    def parse_args(args) do
        parse = OptionParser.parse(args, switches: [ help: :boolean],
                                            aliases: [ h: :help ])

        case parse do
            {[help: true], _, _} -> :help
            {_, [filename], _} -> {filename}
        end
    end
end