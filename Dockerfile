FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y curl git make sudo \
  && git clone https://github.com/OLSF/libra.git

RUN cd libra/ \
  && echo 'DEBIAN_FRONTEND="noninteractive"' >> /etc/environment \
  && make deps \
  && echo "source $HOME/.cargo/env" >> ~/.bashrc

WORKDIR libra

RUN /bin/bash -c 'source $HOME/.cargo/env && make bins && make install'


ENV PATH=${PATH}:/root/bin

# NOTE: ulimit is not increased here, despite it being (temporarily)
#       in the hard mode directions
#       (see: https://github.com/OLSF/libra/blob/main/ol/documentation/node-ops/validators/validator_onboarding_hard_mode.md#4-start-the-node-in-fullnode-mode)
