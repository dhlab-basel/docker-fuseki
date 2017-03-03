FROM dhlabbasel/webapi-base:latest

MAINTAINER Ivan Subotic "ivan.subotic@unibas.ch"

# Add Fuseki distribution from the Knora repository
RUN \
  git clone -b develop --single-branch --depth=1 https://github.com/dhlab-basel/Knora.git /knora && \
  mv /knora/triplestores/fuseki /fuseki && \
  rm -rf /knora

WORKDIR /fuseki

EXPOSE 3030
CMD ["./fuseki-server"]