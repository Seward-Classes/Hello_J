FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ARG J_VERSION=9.7.1
RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates curl \
    && curl -fsSL "https://www.jsoftware.com/download/j9.7/install/j${J_VERSION}_linux.tar.gz" -o /tmp/j.tar.gz \
    && tar -xzf /tmp/j.tar.gz -C /opt \
    && ln -s /opt/j9.7/bin/jconsole /usr/local/bin/jconsole \
    && rm -f /tmp/j.tar.gz \
    && rm -rf /var/lib/apt/lists/*

ENV J_HOME=/opt/j9.7