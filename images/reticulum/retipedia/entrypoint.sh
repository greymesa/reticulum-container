#!/bin/ash
python3 /config/storage/pages/retipedia/generate_meta.py
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
