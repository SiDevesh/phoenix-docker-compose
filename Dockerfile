FROM elixir:1.9.2
RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    nano \
    inotify-tools \
    postgresql-client \
      && rm -rf /var/lib/apt/lists
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install hex phx_new 1.4.10 --force
WORKDIR /usr/src/app
COPY . .
RUN mix deps.get
EXPOSE 4000
CMD mix phx.server
