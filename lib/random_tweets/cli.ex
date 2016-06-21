defmodule RandomTweets.CLI do
    @default_file "tweets.txt"

    def run(argv) do
        parse_args(argv)
        |> process
    end

    def process(:help) do
        """
        usage: random_tweets filename
        """
    end

    def process({filename} \\ {@default_file}) do
        Path.join("#{:code.priv_dir(:random_tweets)}", filename)
        |> RandomTweets.File.get_line
        |> ExTwitter.update
    end

    def parse_args(args) do
        parse = OptionParser.parse(args, switches: [ help: :boolean],
                                            aliases: [ h: :help ])

        case parse do
            {[help: true], _, _} -> :help
            {_, [filename], _} -> {filename}
            {_, [], _} -> {@default_file}
        end
    end
end