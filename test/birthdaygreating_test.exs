defmodule BirthdaygreatingTest do
  use ExUnit.Case
  doctest Birthdaygreating

  test "No friends at all" do
    # given a date
    date = ~D"2024-12-20"

    # when theere's no friends
    messages = Birthdaygreating.send(date, fn _ -> [] end)

    # then no message is sent
    assert length(messages) == 0

  end

  test "No friends born today" do
    # given a date
    date = ~D"2024-12-20"

    # when it's no friend's birthday
    messages = Birthdaygreating.send(date, fn _ -> [] end)

    # then no friend was sent the birthday message
    assert length(messages) == 0

  end
end
