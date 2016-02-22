defmodule PublisherService.UserView do
  use PublisherService.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, PublisherService.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, PublisherService.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email}
  end
end
