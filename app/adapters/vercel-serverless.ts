import { createMiddleware } from "@hattip/adapter-node";
import { remixHandler } from "./base";

export default createMiddleware((ctx) => remixHandler(ctx.request));
