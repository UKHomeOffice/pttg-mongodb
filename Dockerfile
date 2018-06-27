FROM mongo:3.2

ENV USER user-pttg-mongodb
ENV USER_ID 1000
ENV GROUP group-pttg-mongodb
ENV NAME pttg-mongodb

ARG VERSION

RUN groupadd -r ${GROUP} && \
    useradd -r -u ${USER_ID} -g ${GROUP} ${USER} -d /data && \
    mkdir -p /data && \
    chown -R ${USER}:${GROUP} /data \
    chmod -R 755 /data


USER ${USER_ID}

EXPOSE 27017

ENTRYPOINT ["/usr/bin/mongod"]