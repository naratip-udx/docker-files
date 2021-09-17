#!/usr/bin/env bash
# sudo sysctl -w vm.max_map_count=262144
# sudo sysctl -w fs.file-max=65536
# sudo sh -c "ulimit -n 65536"

CMD="$1"

if [ "$CMD" == "up" ]; then
  docker compose up -d
elif [ "$CMD" == "down" ]; then
  docker compose down
else
  echo "Usage: $0 { up | down }"
  exit 1
fi

exit 0
