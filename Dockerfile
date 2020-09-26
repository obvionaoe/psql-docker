# Get the alpine base image
FROM alpine:3.12.0
# Update and add the postgres client
RUN apk --update --no-cache add postgresql-client && rm -rf /var/cache/apk/*
ENTRYPOINT [ "psql" ]
