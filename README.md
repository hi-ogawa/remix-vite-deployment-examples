Examples to deploy Remix Vite application to serverless platforms

- [x] Cloudflare Workers https://remix-vite-deploy.hiro18181.workers.dev
- [x] Vercel Edge https://remix-vite-deploy-edge.vercel.app
- [x] Vercel Serverless https://remix-vite-deploy-serverless.vercel.app

```sh
pnpm dev
pnpm build

pnpm preview-cloudflare-workers
pnpm release-cloudflare-workers

# see misc/vercel-edge/README.md for initial setup
pnpm build-vercel-edge
pnpm release-vercel-edge

# see misc/vercel-serverless/README.md for initial setup
pnpm build-vercel-serverless
pnpm release-vercel-serverless
```

---

# templates/unstable-vite

⚠️ Remix support for Vite is unstable and not recommended for production.

📖 See the [Remix Vite docs][remix-vite-docs] for details on supported features.

## Setup

```shellscript
npx create-remix@latest --template remix-run/remix/templates/unstable-vite
```

## Run

Spin up the Vite dev server:

```shellscript
npm run dev
```

Or build your app for production and run it:

```shellscript
npm run build
npm run start
```

[remix-vite-docs]: https://remix.run/docs/en/main/future/vite
