# Author: Michael Valdron
FROM jupyter/base-notebook:latest

USER root

# Copy Jupyter Server Config
COPY jupyter_notebook_config.py /etc/jupyter/jupyter_notebook_config.py

# Clojupyter
RUN conda install -y -c simplect clojupyter

# "CMD" runs an initial command on container startup
USER jovyan
CMD start-notebook.sh
