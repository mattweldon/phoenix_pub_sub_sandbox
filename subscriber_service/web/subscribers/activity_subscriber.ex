defmodule SubscriberService.ActivitySubscriber do
  use GenServer

  def start_link(channel) do
    GenServer.start_link(__MODULE__, channel)
  end

  def init(channel) do
    {:ok, pid} = Kernel.self
    {:ok, ref} = SubscriberService.PubSub.subscribe
    {:ok, {pid, channel, ref}
  end

  def handle_info(message, {pid, channel, ref} = state) do
    IO.inspect "Received Message:"
    IO.inspect message
    {:noreply, state}
  end
end
