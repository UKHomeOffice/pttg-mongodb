FROM mongo:3.2

ENV USER user-pttg-mongodb
ENV USER_ID 1000
ENV GROUP group-pttg-mongodb
ENV NAME pttg-mongodb

ARG VERSION

USER ${USER_ID}

EXPOSE 27017

ENTRYPOINT ["/usr/bin/mongod"]