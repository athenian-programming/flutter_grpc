FROM google/dart
# Usage described here: https://hub.docker.com/r/google/dart/

WORKDIR /app

ADD pubspec-docker.yaml /app/pubspec.yaml
RUN pub get

# pubspec.yaml is in the .dockerignorefile, so it is not copied here
ADD . /app
RUN pub get --offline

EXPOSE 50051

CMD []
ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]
