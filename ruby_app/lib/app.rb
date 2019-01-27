require 'sinatra'
require 'json'
require_relative 'app/client/elixir_app'

set :bind, '0.0.0.0'

get '/' do
  <<-BODY
  \nRunning Ruby App: Env Vars #{ENV['USERNAME']} password: #{ENV['PASSWORD']}
  \nElixir: #{ENV['ELIXIRAPPSERVICE_SERVICE_HOST']}
  \nRequest from Elixir App: #{App::Client::ElixirApp.new.get}
  BODY
end

get '/health_check' do
  content_type :json

  { status: "ok" }.to_json
end
