import { createPagesFunctionHandler } from "@remix-run/cloudflare-pages";
import { ServerBuild } from "@remix-run/server-runtime";

// @ts-ignore
import * as build from "../../build/server/index.js";

export const onRequest = createPagesFunctionHandler({
  build: build as any as ServerBuild,
  mode: "production",
});
