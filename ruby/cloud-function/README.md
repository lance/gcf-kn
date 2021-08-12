# Ruby Cloud Events Function

Welcome to your new Ruby function project! The boilerplate function
code can be found in [`func.rb`](./func.rb). This function is meant
to respond to [Cloud Events](https://cloudevents.io/).

## Local execution

Install the function dependencies with bundler, and run with `rake`.

```
bundle config set path 'vendor/bundle'
bundle install
rake
```

The runtime will expose for function at the root `/` endpoint.

  * `/` The endpoint for your function.
You can use `func` to send an event
to the function endpoint:

```console
func emit -d '{ "message": "Hello world!" }' -k local
```
