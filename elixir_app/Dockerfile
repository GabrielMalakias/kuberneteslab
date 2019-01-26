FROM elixir:1.8

RUN mix local.hex --force \\
 && mix local.rebar --force

RUN mkdir /elixir_app
WORKDIR /elixir_app

COPY config ./config
COPY lib ./lib
ADD mix.exs .
ADD mix.lock .

RUN mix deps.get

EXPOSE 4000
CMD mix run --no-halt
