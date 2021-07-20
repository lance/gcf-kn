FROM ubuntu:bionic as base
ENV CNB_USER_ID=1000
ENV CNB_GROUP_ID=1000
ENV CNB_STACK_ID="dev.boson.stacks.bionic"
LABEL io.buildpacks.stack.id="dev.boson.stacks.bionic"

RUN groupadd cnb --gid ${CNB_GROUP_ID} && \
  useradd --uid ${CNB_USER_ID} --gid ${CNB_GROUP_ID} -m -s /bin/bash cnb

RUN apt-get update && \
  apt-get install -y xz-utils ca-certificates && \
  rm -rf /var/lib/apt/lists/*

FROM base as run
USER ${CNB_USER_ID}:${CNB_GROUP_ID}

FROM base as build
RUN apt-get update && \
  apt-get install -y git wget jq libgmp-dev build-essential patch ruby-dev zlib1g-dev liblzma-dev && \
  rm -rf /var/lib/apt/lists/* && \
  wget https://github.com/sclevine/yj/releases/download/v5.0.0/yj-linux -O /usr/local/bin/yj && \
  chmod +x /usr/local/bin/yj
USER ${CNB_USER_ID}:${CNB_GROUP_ID}
