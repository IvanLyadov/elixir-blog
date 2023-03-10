defmodule Blogpost.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :author, :string
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :author])
    |> validate_required([:title, :body, :author])
  end
end
