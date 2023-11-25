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
cd "$this_dir"

# clean
rm -rf .vercel/output
mkdir -p .vercel/output

# config.json
cp config.json .vercel/output/config.json

# static
mkdir -p .vercel/output/static
cp -r ../../build/client/. .vercel/output/static
rm -rf .vercel/output/static/.vite

# functions
mkdir -p .vercel/output/functions/index.func
cp .vc-config.json .vercel/output/functions/index.func/.vc-config.json

npx esbuild ../../app/adapters/vercel-serverless.ts \
  --outfile=.vercel/output/functions/index.func/index.js \
  --metafile=../../build/esbuild-metafile-vercel-serverless.json \
  --bundle --minify --format=cjs --platform=node
