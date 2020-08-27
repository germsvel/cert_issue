defmodule CertIssueWeb.PageController do
  use CertIssueWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
