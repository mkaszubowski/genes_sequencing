defmodule Genes.MatcherTest do
  use ExUnit.Case
  alias Genes.Matcher

  test ".matching_chars" do
    assert Matcher.matching_chars("AAAA", "AAAA") == 4
    assert Matcher.matching_chars("ACCA", "CCAD") == 3
    assert Matcher.matching_chars("AGCA", "CAAD") == 2
    assert Matcher.matching_chars("ACCA", "ACAD") == 1
    assert Matcher.matching_chars("AAAA", "CCCC") == 0
  end

  test ".sorted successors" do
    seq = "ACGT"
    all = ["ACGT", "AAAA", "GTAA", "CGTA", "TAAA"]

    expected = [
      {"CGTA", 3},
      {"GTAA", 2},
      {"TAAA", 1},
      {"AAAA", 0}
    ]

    assert Matcher.sorted_successors(seq, all) == expected
  end
end
