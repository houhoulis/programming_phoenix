defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "José V", username: "jose"},
      %User{id: "2", name: "Bruce T", username: "bruce"},
      %User{id: "3", name: "Chris McC", username: "chris"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn u -> u.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn u ->
      Enum.all?(params, fn {key, val} -> Map.get(u, key) == val end)
    end)
  end
end
