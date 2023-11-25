import {
  Link,
  Links,
  LiveReload,
  Meta,
  Outlet,
  Scripts,
  ScrollRestoration,
} from "@remix-run/react";

export default function App() {
  return (
    <html lang="en">
      <head>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <Meta />
        <Links />
      </head>
      <body>
        <div style={{ display: "flex", justifyContent: "space-between" }}>
          <a
            href="https://github.com/hi-ogawa/remix-vite-deployment-examples"
            target="_blank"
          >
            Source code
          </a>
          <span
            ref={(el) => {
              if (el) el.textContent = "hydrated";
            }}
            style={{ opacity: 0.5 }}
          >
          </span>
        </div>
        <ul>
          <li>
            <Link to="/">root</Link>
          </li>
          <li>
            <Link to="/page1">page1</Link>
          </li>
          <li>
            <Link to="/page2">page2</Link>
          </li>
        </ul>
        <Outlet />
        <ScrollRestoration />
        <Scripts />
        <LiveReload />
      </body>
    </html>
  );
}
