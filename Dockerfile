FROM postgres:18

RUN apt-get update \
  && apt-get install -y --no-install-recommends curl zstd jq \
  && rm -rf /var/lib/apt/lists/*

COPY crane-pg /usr/local/bin/crane-pg
RUN chmod +x /usr/local/bin/crane-pg

ENTRYPOINT ["crane-pg"]
