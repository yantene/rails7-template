FROM ruby:3.1.1-alpine

ENV LANG "C.UTF-8"

RUN \
  apk update && \
  apk upgrade

RUN \
  apk add --no-cache \
  zsh \
  tmux \
  sudo \
  git \
  openssh \
  neovim \
  direnv \
  binutils \
  coreutils \
  findutils \
  diffutils \
  moreutils \
  tar \
  grep \
  sed \
  libxml2-dev \
  postgresql14-dev \
  postgresql14-client \
  make \
  gcc \
  libc-dev \
  tzdata \
  build-base \
  curl \
  curl-dev

ARG UID
ARG GID

RUN \
  apk add --no-cache shadow && \
  groupadd --gid ${GID:-1000} dev-users && \
  useradd --uid ${UID:-1000} --gid ${GID:-1000} -m dev-user && \
  touch /home/dev-user/.zshrc && \
  chown dev-user:dev-users /home/dev-user/.zshrc && \
  echo "dev-user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/dev-user && \
  chmod 0440 /etc/sudoers.d/dev-user && \
  apk del shadow

WORKDIR /workspace

EXPOSE 3000

CMD ["/usr/bin/tail", "-f", "/dev/null"]
