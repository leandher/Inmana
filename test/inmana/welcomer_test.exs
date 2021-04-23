defmodule Inmana.WelcomerTest do
  use ExUnit.Case, async: true

  describe "welcome/1" do
    test "when user is special, returns a special message" do
      params = %{"name" => "Banana", "age" => "42"}

      result = Inmana.Welcomer.welcome(params)

      expected_result = {:ok, "You are very special, banana"}

      assert result == expected_result
    end

    test "when user is not special, returns a message" do
      params = %{"name" => "leandher", "age" => "24"}

      result = Inmana.Welcomer.welcome(params)

      expected_result = {:ok, "Welcome, leandher"}

      assert result == expected_result
    end

    test "when user is under age, returns an error" do
      params = %{"name" => "Bananinha", "age" => "17"}

      result = Inmana.Welcomer.welcome(params)

      expected_result = {:error, "You shall not be allowed, bananinha"}

      assert result == expected_result
    end
  end
end
