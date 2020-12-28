FROM alpine
COPY hello.sh /hello.sh
ENTRYPOINT  ["sh", "/hello.sh"]
