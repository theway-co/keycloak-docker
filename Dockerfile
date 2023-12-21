FROM quay.io/keycloak/keycloak:22.0.5

USER root
ENV TZ=Europe/Moscow
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

ENV KC_LOG_LEVEL: INFO
ENV KC_PROXY: edge

ENV KC_DB=postgres
ENV KC_DB_URL=$KC_DB_URL
ENV KC_DB_USERNAME=$DB_USERNAME
ENV KC_DB_SCHEMA=keycloak

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]


##jdbc:postgresql://127.0.0.1:5432/theway_keycloak
##localhost
