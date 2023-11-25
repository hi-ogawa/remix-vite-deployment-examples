#!/bin/bash
set -eu -o pipefail

# .vercel/
#   project.json
#   output/
#     config.json
#     static/              = dist/client
#     functions/
#       index.func/
#         .vc-config.json
#         index.js         = dist/server/index.js

this_dir="$(dirname "${BASH_SOURCE[0]}")"

# clean
rm -rf .vercel/output
mkdir -p .vercel/output

# config.json
cp "$this_dir/config.json" .vercel/output/config.json

# static
mkdir -p .vercel/output/static
cp -r build/client/. .vercel/output/static
rm -rf .vercel/output/static/.vite

# functions
mkdir -p .vercel/output/functions/index.func
cp "$this_dir/.vc-config.json" .vercel/output/functions/index.func/.vc-config.json
npx esbuild app/adapters/vercel-edge.ts \
  --outfile=.vercel/output/functions/index.func/index.js \
  --metafile=build/esbuild-metafile-vercel-edge.json \
  --bundle --minify --format=esm --platform=browser
