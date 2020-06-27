FROM python:3.8.3

ADD requirements.txt ./
RUN pip --no-cache-dir install -r requirements.txt

# install libyaml for file store performance https://mlflow.org/docs/latest/tracking.html#id53
# need to reinstall pyyaml after install libyaml
RUN apt-get update && apt-get install libyaml-cpp-dev libyaml-dev && \
    rm -rf /var/lib/apt/lists/* && \
    pip --no-cache-dir install --force-reinstall -I pyyaml

RUN groupadd --gid 2000 mlflow \
    && useradd -ms /bin/bash -d /home/mlflow mlflow --uid 2000 --gid 2000
USER 2000

CMD ["mlflow", "server"]
