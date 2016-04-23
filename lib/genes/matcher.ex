defmodule Genes.Matcher do
  def matching_chars(seq1, seq2), do: _matching_chars(seq1, seq2)

  defp _matching_chars(a, a), do: String.length(a)
  defp _matching_chars(a, b) do
    a2 = String.slice(a, 1..-1)
    b2 = String.slice(b, 0..-2)
    _matching_chars(a2, b2)
  end

  def sorted_successors(given_sequence, all) do
    all
    |> Enum.map(fn (seq) -> {seq, matching_chars(given_sequence, seq)} end)
    |> Enum.sort_by(fn (tuple) -> elem(tuple, 1) end, &>=/2)
    |> Enum.drop_while(fn (tuple) -> elem(tuple, 0) == given_sequence end)
  end
end
