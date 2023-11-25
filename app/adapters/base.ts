import {
  type ServerBuild,
  createRequestHandler,
} from "@remix-run/server-runtime";

// @ts-ignore
import * as build from "../../build/server/index.js";

export const remixHandler = createRequestHandler(
  build as any as ServerBuild,
  "production"
);
