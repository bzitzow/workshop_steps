defmodule TableProcessOne do
  import IO

  def ping do
    receive do
      :ping -> puts ":ping received"
      # insert receive here
    end
  end

  def start do
    # insert spawn here
    # spawn(fn () -> "" end)
    # spawn(TableProcessOne, :ping, [])
    spawn(&TableProcessOne.ping/0)
    # spawn(fn () -> ping() end)
  end
end
