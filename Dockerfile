FROM caddy:latest
ARG BUILD_CACHEBUST=0

RUN echo $BUILD_CACHEBUST

WORKDIR /app

COPY Caddyfile ./

COPY --chmod=755 entrypoint.sh ./

RUN caddy fmt --overwrite Caddyfile

ENTRYPOINT ["/bin/sh"]

CMD ["entrypoint.sh"]
