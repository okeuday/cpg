#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CPG.Mixfile do
  use Mix.Project

  def project do
    [app: :cpg,
     version: "2.0.2",
     language: :erlang,
     erlc_options: [
       {:d, :erlang.list_to_atom('ERLANG_OTP_VERSION_' ++ :erlang.system_info(:otp_release))},
       :debug_info,
       :warnings_as_errors,
       :strict_validation,
       :warn_bif_clash,
       :warn_deprecated_function,
       :warn_export_all,
       :warn_export_vars,
       :warn_exported_vars,
       :warn_obsolete_guard,
       :warn_shadow_vars,
       :warn_unused_import,
       :warn_unused_function,
       :warn_unused_record,
       :warn_unused_vars],
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
    [{:trie, ">= 2.0.2"},
     {:reltool_util, ">= 2.0.2"},
     {:quickrand, ">= 2.0.2"}]
  end

  defp description do
    "CloudI Process Groups"
  end

  defp package do
    [files: ~w(src include doc test rebar.config README.md LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/okeuday/cpg"}]
   end
end
