# Author: Michael Valdron
FROM jupyter/base-notebook:latest

USER root

# Copy Jupyter Server Config
COPY jupyter_notebook_config.py /etc/jupyter/jupyter_notebook_config.py

# Install System Packages
# RUN apt-get update && apt-get install \
#   git \
#   make \
#   curl \
#   build-essential \
#   default-jre \
#   default-jdk \
#   openssh-server \
#   openssh-client \
#   -y --no-install-recommends

# # Clojure & Lein
# RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.469.sh && \
#   chmod +x linux-install-1.10.1.469.sh && \
#   ./linux-install-1.10.1.469.sh && \
#   rm linux-install-1.10.1.469.sh

# RUN curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
#   mv lein /usr/local/bin/lein && \
#   chmod +x /usr/local/bin/lein

# Clojupyter
RUN conda install -y -c simplect clojupyter

# "CMD" runs an initial command on container startup
USER jovyan
CMD start-notebook.sh
