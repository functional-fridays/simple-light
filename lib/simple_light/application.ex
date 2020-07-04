defmodule SimpleLight.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      SimpleLight.Repo,
      # Start the Telemetry supervisor
      SimpleLightWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: SimpleLight.PubSub},
      # Start the Endpoint (http/https)
      SimpleLightWeb.Endpoint
      # Start a worker by calling: SimpleLight.Worker.start_link(arg)
      # {SimpleLight.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SimpleLight.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SimpleLightWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
