FROM circleci/golang:latest

WORKDIR /go/src/github.com/user

ENV VERSION 0.1.0
ENV DEP_VERSION 0.5.1
ENV TERRAFORM_VERSION 0.11.10

RUN curl -L -s https://github.com/golang/dep/releases/download/v$DEP_VERSION/dep-linux-amd64 \
    -o /go/bin/dep \
    && chmod +x /go/bin/dep

RUN curl -L -s https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/terraform_0.11.10_linux_amd64.zip -o /go/bin/terraform.zip \
   && unzip /go/bin/terraform.zip -d /go/bin \
   && chmod +x /go/bin/terraform
