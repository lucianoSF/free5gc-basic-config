FROM jupyter/minimal-notebook:latest

ENV CHOWN_HOME=yes
ENV GRANT_SUDO=yes
ENV RESTARTABLE=yes

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root


RUN pip install --quiet -U 'bash_kernel' \
    && python -m bash_kernel.install

