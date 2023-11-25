import { MetaFunction } from "@remix-run/react";

export const meta: MetaFunction = () => [{ title: "hi meta" }];

export default function Page2() {
  return <div>Test meta</div>;
}
