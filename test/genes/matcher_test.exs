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
end
