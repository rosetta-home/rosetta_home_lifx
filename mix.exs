defmodule RosettaHomeLifx.Mixfile do
  use Mix.Project

  def project do
    [app: :rosetta_home_lifx,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :lifx, :cicada]]
  end

  defp deps do
    [
      {:lifx, "~> 0.1.6"},
      {:cicada, github: "rosetta-home/cicada", optional: true}
    ]
  end
end
