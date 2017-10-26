defmodule Faktory.Mixfile do
  use Mix.Project

  def project do
    [
      app: :faktory_worker_ex,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      docs: [
        main: "README",
        extras: ["README.md": [title: "README"]]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Faktory.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:connection, "~> 1.0"},
      {:poison, "~> 3.1"},
      {:poolboy, "~> 1.5"},
      {:ex_doc, "~> 0.18.1", only: :dev},
    ]
  end
end
