elixir_ver = 1.0.3

all: build

build:
	docker build -t jahkeup/elixir:$(elixir_ver) . && \
	docker build -t jahkeup/elixir:latest .

