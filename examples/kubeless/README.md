kubeless get-server-config

kubeless function deploy ruby --runtime ruby2.5 --handler test.hello --from-file=without_dependencies.rb
kubeless function call ruby --data 'Bla'

curl  --data '{"hello":"world"}' -H "Content-Type: application.json" -X POST ruby.kubernetes.gabrielmalakias.com
