FROM mongo:3.2

ENV USER user-pttg-mongodb
ENV USER_ID 1000
ENV GROUP group-pttg-mongodb
ENV NAME pttg-mongodb

ARG VERSION

RUN groupadd -r ${GROUP} && \
    useradd -r -u ${USER_ID} -g ${GROUP} ${USER} && \
    mkdir -p /pttg-mongod-data && \
    chown -R ${USER}:${GROUP} /pttg-mongod-data && \
    chmod -R 755 /pttg-mongod-data

USER ${USER_ID}

EXPOSE 27017

ENTRYPOINT /usr/bin/mongod --dbpath=/pttg-mongod-data