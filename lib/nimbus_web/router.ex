defmodule NimbusWeb.Router do
  use NimbusWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", NimbusWeb do
    pipe_through :api
  end
end
