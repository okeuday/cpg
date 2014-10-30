defmodule CPG.Mixfile do
  use Mix.Project

  def project do
    [app: :cpg,
     version: "1.4.0-rc.4",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:trie, "~> 1.4.0-rc.4"},
     {:reltool_util, "~> 1.4.0-rc.4"},
     {:quickrand, "~> 1.4.0-rc.4"}]
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
