#!/bin/bash
set -eu -o pipefail

# functions
mkdir -p "functions"
rm -f "functions/[[path]].js"
npx esbuild app/adapters/cloudflare-pages.ts \
  "--outfile=functions/[[path]].js" \
  --metafile=build/esbuild-metafile-cloudflare-pages.json \
  --bundle --minify --format=esm --platform=browser
