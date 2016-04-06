defmodule Genes.Loader do
  def load(filename) do
    {:ok, body} = filename |> full_path |> File.read

    String.split(body, "\n")
  end

  def full_path(filename) do
    Mix.Project.deps_path <> "/" <> filename
  end
end
