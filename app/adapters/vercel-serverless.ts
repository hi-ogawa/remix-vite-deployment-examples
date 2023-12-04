import { createMiddleware } from "@hattip/adapter-node/native-fetch";
import { remixHandler } from "./base";

export default createMiddleware((ctx) => remixHandler(ctx.request));
