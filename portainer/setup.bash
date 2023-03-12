#!/bin/bash
docker volume create portainer_data
docker compose up -d
docker compose logs -f