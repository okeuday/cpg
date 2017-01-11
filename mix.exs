defmodule CPG.Mixfile do
  use Mix.Project

  def project do
    [app: :cpg,
     version: "1.6.0",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [
       :quickrand,
       :trie],
     mod: {:cpg_app, []},
     registered: [
       :cpg_default_scope,
       :groups_scope1,
       :groups_scope2],
     env: [
       node_type: :visible,
       group_storage: :trie,
       scope: [
         :cpg_default_scope,
         :groups_scope1,
         :groups_scope2]]]
  end

  defp deps do
    [{:trie, "~> 1.6.0"},
     {:reltool_util, "~> 1.6.0"},
     {:quickrand, "~> 1.6.0"}]
  end

  defp description do
    "CloudI Process Groups"
  end

  defp package do
    [files: ~w(src include doc rebar.config README.md LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/okeuday/cpg"}]
   end
end
