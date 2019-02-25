FROM google/dart

#RUN pub global activate protoc_plugin
#ENV PATH $PATH:$HOME/.pub-cache/bin

WORKDIR /app

ADD pubspec-docker.yaml /app/pubspec.yaml
RUN pub get

ADD . /app
RUN pub get --offline

EXPOSE 50051

CMD []
ENTRYPOINT ["/usr/bin/dart", "lib/server.dart"]
