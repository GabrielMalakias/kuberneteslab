def hello(event, context)
  puts event
  "Hello world #{JSON.generate(event[:data])}"
end
