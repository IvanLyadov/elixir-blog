defmodule Blogpost.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Blogpost.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        author: "some author",
        body: "some body",
        title: "some title"
      })
      |> Blogpost.Posts.create_post()

    post
  end
end
