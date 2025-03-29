ARG VARIANT="3.12-bookworm"
FROM mcr.microsoft.com/devcontainers/python:1-${VARIANT}

# Update system packages.
RUN apt-get update && \
    apt-get install -y --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/

# Install poetry.
RUN sudo -H -u vscode bash -c 'curl -sSL https://install.python-poetry.org | python3 -'
ENV PATH=/home/vscode/.local/bin:$PATH
