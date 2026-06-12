#!/bin/ash
python3 /config/nomadnetwork/storage/pages/generate_meta.py
set -e
source /setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
exec -a nomadnet \
  nomadnet \
  --config="$RNS_CONFIG_PATH"/nomadnetwork \
  --daemon \
  --console
