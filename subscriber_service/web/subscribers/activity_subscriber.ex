defmodule SubscriberService.ActivitySubscriber do
  use GenServer

  def start_link(channel) do
    GenServer.start_link(__MODULE__, channel)
  end

  def init(channel) do
    pid = self
    ref = SubscriberService.Endpoint.subscribe(pid, channel)
    {:ok, {pid, channel, ref}}
  end

  def handle_info(%{event: "new:user"} = message, state) do
    IO.inspect "#######################"
    IO.inspect "New User - Received Message:"
    IO.inspect message
    IO.inspect "#######################"
    {:noreply, state}
  end

  def handle_info(message, state) do
    IO.inspect "#######################"
    IO.inspect "Catch All - Received Message:"
    IO.inspect message
    IO.inspect "#######################"
    {:noreply, state}
  end
end
