FROM fedora:22

RUN dnf reinstall -y glibc-common && \
    dnf install -y elixir git-core
RUN dnf groupinstall -y "Development Tools"
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

VOLUME /app
WORKDIR /app
CMD ["mix test"]
