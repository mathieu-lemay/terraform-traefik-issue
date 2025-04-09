#! /bin/bash
set -eu

if ! command -v traefik &>/dev/null; then
    echo "command not found: traefik"
    exit 1
fi

cleanup() {
    docker compose down
}

trap cleanup EXIT

docker compose up -d terraform-state
traefik --configfile=./traefik.yml
