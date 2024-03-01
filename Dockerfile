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

# Install ffq
RUN pip install ffq==0.3.0

# Install jq
RUN apt-get update && apt-get install -y jq

# Modify utils.py
RUN sed -i 's@return BeautifulSoup(cached_get(f"{ENA_URL}/{accession}/"), "xml")@return BeautifulSoup(cached_get(f"{ENA_URL}/{accession}"), "xml")@' /usr/local/lib/python3.7/site-packages/ffq/utils.py

# Set working directory
WORKDIR /home

# bash
CMD ["bash"]
