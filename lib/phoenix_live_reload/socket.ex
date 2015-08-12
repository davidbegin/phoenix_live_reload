defmodule Phoenix.LiveReloader.Socket do
  @moduledoc """
  The Socket handler for live reload channels.
  """

  use Phoenix.Socket
  channel "phoenix:live_reload", Phoenix.LiveReload.Channel

  transport :websocket, Phoenix.Transports.WebSocket,
    transport_log: false,
    check_origin: false

  transport :longpoll, Phoenix.Transports.LongPoll,
    transport_log: false,
    check_origin: false

  def connect(_params, socket), do: {:ok, socket}

  def id(_socket), do: nil
end
