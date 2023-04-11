###############################################################
# Dockerfile to build container images for ffq
# Based on python 3.7.13-buster
################################################################

FROM python:3.7.13-buster

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

ENV DEBIAN_FRONTEND=noninteractive

# Upgrade pip
RUN pip install --upgrade pip

# Install TOBIAS
RUN pip install ffq==0.3.0

# Set working directory
WORKDIR /home

# bash
CMD ["bash"]
