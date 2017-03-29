#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CPG.Mixfile do
  use Mix.Project

  def project do
    [app: :cpg,
     version: "1.7.0",
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
    [{:trie, "~> 1.7.0"},
     {:reltool_util, "~> 1.7.0"},
     {:quickrand, "~> 1.7.0"}]
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
