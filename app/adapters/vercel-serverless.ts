import { createMiddleware } from "@hattip/adapter-node";
import { baseHandler } from "./base";

export default createMiddleware((ctx) => baseHandler(ctx.request));
