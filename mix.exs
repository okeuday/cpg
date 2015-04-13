defmodule CPG.Mixfile do
  use Mix.Project

  def project do
    [app: :cpg,
     version: "1.5.0",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:trie, "~> 1.5.0"},
     {:reltool_util, "~> 1.5.0"},
     {:quickrand, "~> 1.5.0"}]
  end

  defp description do
    "CloudI Process Groups"
  end

  defp package do
    [files: ~w(src include doc rebar.config README.md LICENSE NOTICE),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/okeuday/cpg"}]
   end
end
