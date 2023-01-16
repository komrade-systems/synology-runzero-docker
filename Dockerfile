FROM ubuntu:latest

WORKDIR /opt/rumble

ENV AGENT_URL=

ENV RUMBLE_AGENT_HOST_ID=

ENV RUMBLE_AGENT_LOG_DEBUG=false

ADD ${AGENT_URL} runzero-explorer.bin

RUN chmod +x runzero-explorer.bin

USER root

ENTRYPOINT [ "/opt/rumble/runzero-explorer.bin", "manual"]