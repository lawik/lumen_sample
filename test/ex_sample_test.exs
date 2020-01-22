defmodule ExSampleTest do
  use ExUnit.Case
  doctest ExSample

  test "greets the world" do
    assert ExSample.hello() == :world
  end
end
