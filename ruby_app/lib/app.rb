require 'sinatra'
require 'json'
require 'pg'
require_relative 'app/client/elixir_app'

set :bind, '0.0.0.0'

result = PG::Connection.ping(ENV['POSTGRES_HOST'],
                             5432,
                             {},
                             false,
                             ENV['POSTGRES_DATABASE'],
                             ENV['POSTGRES_USER'],
                             ENV['POSTGRES_PASSWORD'])

get '/' do
  <<-BODY
  \nDATABASE result: #{result}
  \nRunning Ruby App: Env Vars #{ENV['USERNAME']} password: #{ENV['PASSWORD']}
  \nElixir: #{ENV['ELIXIRAPPSERVICE_SERVICE_HOST']}
  \nRequest from Elixir App: #{App::Client::ElixirApp.new.get}
  BODY
end

get '/health_check' do
  content_type :json

  { status: "ok" }.to_json
end
