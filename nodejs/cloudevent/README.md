# Node.js Cloud Events Function

Welcome to your new Node.js function project! The boilerplate function
code can be found in [`index.js`](./index.js). This function is meant
to respond to [Cloud Events](https://cloudevents.io/).

## Local execution

After executing `npm install`, you can run this function locally by running
`npm start`. The runtime will expose three endpoints.

  * `/` The endpoint for your function.
  * `/health/readiness` The endpoint for a readiness health check
  * `/health/liveness` The endpoint for a liveness health check

The health checks can be accessed in your browser at
[http://localhost:8080/health/readiness]() and
[http://localhost:8080/health/liveness](). You can use `func` to send an event
to the function endpoint:

```console
func emit -d '{ "message": "Hello world!" }' -k local
```

The readiness and liveness endpoints use
[overload-protection](https://www.npmjs.com/package/overload-protection) and
will respond with `HTTP 503 Service Unavailable` with a `Client-Retry` header if
your function is determined to be overloaded, based on the memory usage and
event loop delay.

## Testing

This function project includes a [unit test](./test/unit.js) and an
[integration test](./test/integration.js). All `.js` files in the test directory
are run.

```console
npm test
```
