#!/bin/bash
# Build the shippable zip from the repo and (optionally) publish to HubSpot Files.
# Usage: ./build.sh [--publish]
set -euo pipefail
cd "$(dirname "$0")"
V=$(cat VERSION)
rm -f ../zuper-discovery-kit.zip
( cd .. && zip -rq zuper-discovery-kit.zip zuper-discovery-kit \
    -x '*.DS_Store' -x '*/.git/*' -x '*/build.sh' )
echo "built v$V → ../zuper-discovery-kit.zip"
unzip -l ../zuper-discovery-kit.zip | grep -c "  " | sed 's/^/entries: /'
if [ "${1:-}" = "--publish" ]; then
  set -a; source ~/Desktop/VSCode/zuper_keystone/.env; set +a
  curl -sS -H "Authorization: Bearer $HUBSPOT_API_KEY" \
    -F "file=@../zuper-discovery-kit.zip" \
    -F 'options={"access":"PUBLIC_NOT_INDEXABLE","overwrite":true};type=application/json' \
    -F "folderPath=/discovery-kit" \
    "https://api.hubapi.com/files/v3/files" | python3 -c "import sys,json;d=json.load(sys.stdin);print('published:',d.get('url'))"
fi
