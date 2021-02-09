defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field(:title, :string)
  end

  # * Struct represents a record that we want to save in our database.
  # * Params represents the properties we want to update the struct with.
  # * cast creates a changeset that can be validated. "Here is where we currently are, and here is where we want to be."
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
