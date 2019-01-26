defmodule App.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    body = "Running Elixir App: username: #{username()} password: #{password()}"

    send_resp(conn, 200, body)
  end

  match(_, do: send_resp(conn, 404, "Not Available"))

  defp username do
    Application.get_env(:app, :username)
  end

  defp password do
    Application.get_env(:app, :password)
  end
end
