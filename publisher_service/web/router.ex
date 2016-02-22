defmodule PublisherService.Router do
  use PublisherService.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PublisherService do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
