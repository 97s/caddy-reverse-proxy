FROM caddy:latest
ARG UPGRADE_FLAG

ENV UPGRADE=${UPGRADE_FLAG}

WORKDIR /app

COPY Caddyfile ./

COPY --chmod=755 entrypoint.sh ./

RUN caddy fmt --overwrite Caddyfile

ENTRYPOINT ["/bin/sh"]

CMD ["entrypoint.sh"]
