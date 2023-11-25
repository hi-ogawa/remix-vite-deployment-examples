Examples to deploy Remix Vite application to serverless platforms

- [x] Cloudflare Workers https://remix-vite-deploy.hiro18181.workers.dev
- [x] Cloudflare Pages https://remix-vite-deploy-pages.pages.dev/
- [x] Vercel Edge https://remix-vite-deploy-edge.vercel.app
- [x] Vercel Serverless https://remix-vite-deploy-serverless.vercel.app

```sh
pnpm dev
pnpm build

pnpm preview-cloudflare-workers
pnpm release-cloudflare-workers

pnpm build-cloudflare-pages
pnpm preview-cloudflare-pages
pnpm release-cloudflare-pages

# see misc/vercel-edge/README.md for initial setup
pnpm build-vercel-edge
pnpm release-vercel-edge

# see misc/vercel-serverless/README.md for initial setup
pnpm build-vercel-serverless
pnpm release-vercel-serverless
```

# references

- https://vercel.com/docs/build-output-api/v3
- https://developers.cloudflare.com/workers/
- https://github.com/hi-ogawa/demo-remix-unstable-vite-cloudflare-workers
