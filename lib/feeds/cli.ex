defmodule Feeds.Cli do

  def process({user, project, count}) do
    Feeds.Conditions.fetch(user, project)
    |> decode_response()
    |> sort_into_descending_order()
    |> last(count)
    |> print_table_for_columns(["number", "created_at", "title"])
  end

end
