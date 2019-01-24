require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  "app says: AiO! Secrets username #{ENV['USERNAME']} password: #{ENV['PASSWORD']}"
end

get '/health_check' do
  content_type :json

  { status: "ok" }.to_json
end
