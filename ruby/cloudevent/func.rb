require "functions_framework"

FunctionsFramework.cloud_event "handle" do |event|
  # The event parameter is a CloudEvents::Event::V1 object.
  # See https://cloudevents.github.io/sdk-ruby/latest/CloudEvents/Event/V1.html
  payload = event.data

  logger.info "Event: #{event.id}"
  logger.info "Event Type: #{event.type}"
  logger.info "Bucket: #{payload['bucket']}"
  logger.info "File: #{payload['name']}"
  logger.info "Metageneration: #{payload['metageneration']}"
  logger.info "Created: #{payload['timeCreated']}"
  logger.info "Updated: #{payload['updated']}"
end
