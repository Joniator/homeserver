#! /usr/bin/env bash

SERVICE="$(basename "$0")"
if [[ "$SERVICE" == "docker_wrapper.sh" ]]; then
	SERVICE="$1"
	shift
fi
BASE_PATH="$(realpath "$(dirname "$0")/..")"
SERVICE_PATH="$BASE_PATH/$SERVICE"

if [[ -d $SERVICE_PATH ]]; then
	(
		cd "$SERVICE_PATH" || exit
		docker compose -f "$SERVICE_PATH/compose.yml" "$@"
	)
else 
	echo "$SERVICE directory was not found"
fi
