defmodule CertIssue.Repo do
  use Ecto.Repo,
    otp_app: :cert_issue,
    adapter: Ecto.Adapters.Postgres
end
