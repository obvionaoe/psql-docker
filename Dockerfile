# Get the alpine base image
FROM alpine:3.12.0
# Update and add the postgres client
RUN apk --update --no-cache add postgresql-client && rm -rf /var/cache/apk/*
# Copy our entrypoint to the container
COPY entrypoint.sh .
# Change its permissions
RUN chmod +x entrypoint.sh
# Set it as the entrypoint
ENTRYPOINT [ "./entrypoint.sh" ]