defmodule CPG.Mixfile do
  use Mix.Project

  def project do
    [app: :cpg,
     version: "1.3.3",
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:trie, "~> 1.3.3"},
     {:reltool_util, "~> 1.3.3"},
     {:quickrand, "~> 1.3.3"}]
  end

  defp description do
    "CloudI Process Groups"
  end

  defp package do
    [files: ~w(src doc include test rebar.config README.md LICENSE NOTICE),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/okeuday/cpg"}]
   end
end
