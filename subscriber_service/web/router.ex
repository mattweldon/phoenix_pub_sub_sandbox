defmodule SubscriberService.Router do
  use SubscriberService.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SubscriberService do
    pipe_through :api
  end
end
