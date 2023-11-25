import { LoaderFunction } from "@remix-run/node";
import { useLoaderData } from "@remix-run/react";

export const loader: LoaderFunction = () => {
  return { message: "hi loader" };
};

export default function Page1() {
  const loaderData = useLoaderData();
  return (
    <div>
      Test loader: <pre>{JSON.stringify(loaderData)}</pre>
    </div>
  );
}
