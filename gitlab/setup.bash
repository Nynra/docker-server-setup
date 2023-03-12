#!/bin/bash
export GITLAB_HOME=~/docker-server-setup/gitlab
docker compose up -d
docker compose logs -f