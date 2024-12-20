defmodule BirthdaygreatingTest do
  use ExUnit.Case
  doctest Birthdaygreating

  test "greets the world" do
    assert Birthdaygreating.hello() == :world
  end
end
