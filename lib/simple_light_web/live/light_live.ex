defmodule SimpleLightWeb.LightLive do
  use SimpleLightWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :brightness, 10)}
  end
end