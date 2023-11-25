import { remixHandler } from "./base.js";

export function onRequest(ctx: { request: Request }) {
  return remixHandler(ctx.request);
}
