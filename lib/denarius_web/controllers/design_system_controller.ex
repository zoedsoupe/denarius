defmodule DenariusWeb.DesignSystemController do
  use DenariusWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
