defmodule Feeds.Conditions do

  def fetch() do
    Httpoision.get()
  end
end
