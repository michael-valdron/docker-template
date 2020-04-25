# Author: Michael Valdron
FROM ubuntu:bionic

# Install System Packages
RUN apt-get update && apt-get install sudo htop git emacs \
  tmux make build-essential python3 python3-pip \
  python3-virtualenv python3-venv man wget less openjdk-8-jdk \
  openjdk-8-jre rlwrap screenfetch yadm openssh-server \
  openssh-client ack iputils-ping dnsutils -y --no-install-recommends

RUN apt-get install -y --no-install-recommends \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  gnupg-agent \
  software-properties-common

# Install Docker
RUN apt-get install -y docker.io

# Add user
RUN adduser --disabled-password --gecos '' jovyan && \
  usermod -aG sudo,docker,users jovyan

# Clojure & Lein
ENV CLOJURE_LINK=https://download.clojure.org/install/linux-install-1.10.1.536.sh
ENV LEIN_LINK=https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
ENV CLOJURE_INSTALL=install-clojure.sh
RUN curl -o ${CLOJURE_INSTALL} -O ${CLOJURE_LINK} && \
  chmod +x ${CLOJURE_INSTALL} && \
  ./${CLOJURE_INSTALL} && \
  rm ${CLOJURE_INSTALL}

RUN curl -O ${LEIN_LINK} && \
  mv lein /usr/local/bin/lein && \
  chmod +x /usr/local/bin/lein

# TeXLive
RUN apt update && apt install -y texlive

# "CMD" runs an initial command on container startup
CMD service ssh start && bash