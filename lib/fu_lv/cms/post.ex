defmodule FuLv.Cms.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :photo_urls, {:array, :string}, default: []

    timestamps()
  end

  @required_fields ~w(body)a

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, @required_fields)
    |> validate_required(@required_fields)
    |> validate_length(:body, min: 2, max: 250)
  end
end
