# CertIssue

When trying to use `mix phx.gen.cert` with Phoenix 1.5.4, Elixir 1.10.3, and
Erlang 21.2.5, the requests fail after the cert is generated. Updating to Erlang
21.3 fixes the issue.

## Reproduction steps

  * Install this app
  * Generate certs via `mix phx.gen.cert`
  * (set chrome://flags/#allow-insecure-localhost to true if using chrome)
  * Navigate to `https://localhost:4001`
  * Accept the "unsafe" warning in the browser
  * Browser still cannot reach localhost
