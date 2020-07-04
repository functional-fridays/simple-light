defmodule SimpleLightWeb.LightLive do
  use SimpleLightWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :brightness, 10)}
  end

  def render(assigns) do
    ~L"""
    <h1>Front Porch Light</h1>
    <div class="meter">
      <span style="width: <%= @brightness %>%">
        <%= @brightness %>%
      </span>
    </div>

    <button phx-click="off">
      Off
    </button>

    <button phx-click="on">
      On
    </button>
    """
  end
end