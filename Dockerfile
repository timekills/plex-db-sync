FROM alpine
MAINTAINER NOSPAM <nospam@nnn.nnn>

COPY docker.sh /docker.sh
COPY plex-db-sync-plexguide /plex-db-sync-plexguide

RUN chmod a+x /docker.sh /plex-db-sync-plexguide
RUN apk add --update bash sshfs sqlite openssh-client apk-cron && rm -rf /var/cache/apk/*

CMD ["/docker.sh"]
