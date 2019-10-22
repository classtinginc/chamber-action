FROM segment/chamber:2 AS chamber
FROM alpine:3.10

COPY --from=chamber /chamber /bin/chamber

ENTRYPOINT ["chamber"]
