#!/usr/bin/env bash
set -e

# If the .venv directory was mounted as a named volume, it needs the ownership changed.
sudo chown vscode .venv || true

WORKSPACE_DIR=$(pwd)

# Change some Poetry settings to better deal with working in a container
poetry config cache-dir ${WORKSPACE_DIR}/.cache
poetry config virtualenvs.in-project true
poetry install --with=dev
