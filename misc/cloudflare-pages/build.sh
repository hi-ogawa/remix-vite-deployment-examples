#!/bin/bash
set -eu -o pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

# static
mkdir -p build/client
cp -r ../../build/client/. build/client
rm -rf build/client/.vite
cp _headers _routes.json build/client

# functions (advanced mode https://developers.cloudflare.com/pages/platform/functions/advanced-mode/)
npx esbuild ../../app/adapters/cloudflare-workers.ts \
  "--outfile=build/client/_worker.js" \
  --metafile=build/esbuild-metafile-cloudflare-pages.json \
  --bundle --minify --format=esm --platform=browser
