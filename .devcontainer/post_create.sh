#!/bin/sh

rm -f tmp/pid/server.pid

mkdir -p .bundle/
echo '---
BUNDLE_PATH: "vendor/bundle"' > .bundle/config
