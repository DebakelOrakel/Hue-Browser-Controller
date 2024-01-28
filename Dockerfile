FROM alpine:latest

RUN apk --no-cache -U add python3 && \
    apk upgrade --no-cache -U -a
# Patch OpenSSL vulnerability

EXPOSE 8000
WORKDIR /serve

COPY . /serve

ENTRYPOINT [ "python3", "-m", "http.server", "8000" ]
