FROM python:2.7-slim-stretch
LABEL maintainer="Wuabit dev@wuabit.com"

RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install snips-nlu \
    && python -m snips_nlu download-all-languages 
