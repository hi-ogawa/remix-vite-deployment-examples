#!/bin/bash
set -eu -o pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

# static
mkdir -p build/client
cp -r ../../build/client/. build/client
rm -rf .vercel/output/static/.vite
cp _headers _routes.json build/client

# functions
mkdir -p "functions"
rm -f "../../functions/[[path]].js"
npx esbuild app/adapters/cloudflare-pages.ts \
  "--outfile=../../functions/[[path]].js" \
  --metafile=build/esbuild-metafile-cloudflare-pages.json \
  --bundle --minify --format=esm --platform=browser
