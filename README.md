Examples to deploy Remix Vite app to various serverless platform

- [x] Cloudflare Workers https://remix-vite-deploy-cloudflare-workers.hiro18181.workers.dev
- [ ] Vercel Serverless
- [ ] Vercel Edge

```sh
pnpm dev
pnpm build

pnpm cloudflare-workers-preview
pnpm cloudflare-workers-release

pnpm vercel-edge-build
pnpm vercel-edge-release

pnpm vercel-serverless-build
pnpm vercel-serverless-release
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
