# Author: Michael Valdron
FROM ubuntu:latest

ARG username

# Install System Packages
RUN apt-get update && apt-get install sudo htop git emacs \
  tmux make build-essential python3 python3-pip \
  python3-virtualenv python3-venv man wget less default-jre \
  default-jdk rlwrap screenfetch yadm openssh-server \
  openssh-client ack iputils-ping dnsutils -y --no-install-recommends

RUN apt-get install -y --no-install-recommends \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  gnupg-agent \
  software-properties-common

# Add user
RUN adduser --disabled-password --gecos '' $username && \
  adduser $username sudo

# Spacemacs
RUN echo "#!/bin/bash\n\nexport DOCKER_FIX=\"1\"\n" \
  > "/home/${username}/.bash_docker"

RUN chown $username:$username "/home/$username/.bash_docker"

RUN git clone https://github.com/syl20bnr/spacemacs.git \
  /home/$username/.emacs.d/

RUN chown -R $username:$username /home/$username/.emacs.d

# Clojure & Lein
RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.469.sh && \
  chmod +x linux-install-1.10.1.469.sh && \
  ./linux-install-1.10.1.469.sh && \
  rm linux-install-1.10.1.469.sh

RUN curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
  mv lein /usr/local/bin/lein && \
  chmod +x /usr/local/bin/lein

# "CMD" runs an initial command on container startup
CMD service ssh start && tail -f /dev/null
