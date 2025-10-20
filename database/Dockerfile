FROM postgres:18-alpine As database 

EXPOSE 5432  

COPY init.sh /docker-entrypoint-initdb.d/

ENV POSTGRES_HOST_AUTH_METHOD=trust

CMD ["postgres"]

