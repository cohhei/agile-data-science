defmodule DummyProducer.Mixfile do
  use Mix.Project

  def project do
    [
      app: :dummy_producer,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :logger,
        :kafka_ex,
        :snappy
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:json, "~> 1.0"},
      {:kafka_ex, "~> 0.7.0"},
      {:snappy, git: "https://github.com/fdmanana/snappy-erlang-nif"}
    ]
  end
end
