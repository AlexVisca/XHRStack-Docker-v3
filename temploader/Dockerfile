# escape=\
FROM bash:latest
# Install dependencies
RUN apk update && \
    apk add curl
# Copy shell scripts
COPY . ./
RUN chmod +x ./wait-for-it.sh ./start.sh
# Program executable
ENTRYPOINT [ "./start.sh" ]