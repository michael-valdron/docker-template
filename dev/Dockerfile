FROM ubuntu:19.04

ARG arg

# Install System Packages
RUN apt-get update && apt-get install sudo htop git emacs \
  tmux make build-essential python3 python3-pip \
  python3-virtualenv python3-venv man wget less default-jre \
  default-jdk rlwrap screenfetch yadm openssh-server \
  openssh-client ack iputils-ping -y --no-install-recommends

RUN apt-get install -y --no-install-recommends \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

# Add user
RUN adduser --disabled-password --gecos '' mvaldron && \
  adduser mvaldron sudo

# Spacemacs
RUN git clone https://github.com/syl20bnr/spacemacs.git \
  /home/mvaldron/.emacs.d/

RUN chown -R mvaldron:mvaldron /home/mvaldron/.emacs.d

# Anaconda Install
#RUN if [ "${arg}" != "arm" ] ; then curl -O \
#  https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh && \
#  mv Anaconda3-2019.07-Linux-x86_64.sh /home/mvaldron/Anaconda3-2019.07-Linux-x86_64.sh && \
#  chown mvaldron:mvaldron /home/mvaldron/Anaconda3-2019.07-Linux-x86_64.sh && \
#  chmod a+x /home/mvaldron/Anaconda3-2019.07-Linux-x86_64.sh ; fi

#RUN if [ "${arg}" != "arm" ] ; then su - mvaldron -c \
#  "bash /home/mvaldron/Anaconda3-2019.07-Linux-x86_64.sh -b -p /home/mvaldron/anaconda3" ; \
#  fi

# Clojure & Lein
RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.469.sh && \
  chmod +x linux-install-1.10.1.469.sh && \
  ./linux-install-1.10.1.469.sh && \
  rm linux-install-1.10.1.469.sh

RUN curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
  mv lein /usr/local/bin/lein && \
  chmod +x /usr/local/bin/lein

# "CMD" runs an initial command on container startup
CMD service ssh start && su - mvaldron -c bash
