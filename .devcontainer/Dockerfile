ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}
RUN apt-get update \ 
    && apt-get install -y build-essential kmod sudo \
    && apt-get install -y --reinstall linux-headers-$(uname -r)
