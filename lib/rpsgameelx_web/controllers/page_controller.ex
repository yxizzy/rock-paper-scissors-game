defmodule RpsgameelxWeb.PageController do
  use RpsgameelxWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
