FROM ghcr.io/deephaven/server

COPY setup.sh /setup.sh
RUN sh /setup.sh
