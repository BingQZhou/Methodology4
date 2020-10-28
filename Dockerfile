ARG BASE_CONTAINER=ucsdets/datascience-notebook:2020.2-stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego <Bingqi Zhou>"

# 2) change to root to install packages
USER root

RUN	apt-get install aria2 -y &&\
	apt-get install nmap -y &&\
	apt-get install traceroute -y

# 3) install packages
RUN pip install --no-cache-dir geopandas babypandas

# Override command to disable running jupyter notebook at launch
# CMD ["/bin/bash"]
