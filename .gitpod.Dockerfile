FROM gitpod/workspace-full

USER gitpod

# Install Elixir
RUN sudo apt-get update && \
    sudo apt-get install -y esl-erlang elixir

# Install Hex + Rebar
RUN mix local.hex --force && \
    mix local.rebar --force
