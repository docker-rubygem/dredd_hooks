FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.1

RUN gem install dredd_hooks --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dredd-hooks-ruby"]
CMD ["--help"]
