defmodule Genes.Loader do
  def load(filename) do
    {:ok, body} = filename |> full_path |> File.read

    body
    |> String.split("\n")
    |> Enum.reject(fn x -> String.length(x) == 0 end)
  end

  def full_path(filename) do
    Mix.Project.deps_path <> "/" <> filename
  end
end
