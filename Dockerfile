FROM registry.erda.cloud/retag/minio:RELEASE.2022-10-24T18-35-07Z

ENV PATH=/opt/bin:$PATH

COPY ./minio /opt/bin/minio
COPY dockerscripts/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]

VOLUME ["/data"]

CMD ["minio"]
