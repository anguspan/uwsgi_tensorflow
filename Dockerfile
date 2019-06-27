FROM anguspan/miniconda:alpine3.9-python3.6 
MAINTAINER Angus Pan

RUN  apk add --no-cache vim bash tzdata nginx libstdc++  \
    && conda install -c conda-forge uwsgi \
    && pip install flask flask_restful  flask_cors tensorflow==1.10.1  --no-cache-dir \
    && conda install -y tzlocal \
    && pip install  setuptools \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && conda clean -y -a \
    && find / -depth -type d -name \__pycache__ -exec rm -rf {} \; \
    && find / -depth -type d -name '*.egg-info' -exec rm -rf {} \; \
    && rm -rf /root/.cache/* \
    && rm -rf /tmp/*
