defmodule FuLv.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :body, :string
      add :photo_urls, {:array, :string}, null: false, default: []

      timestamps()
    end

  end
end
