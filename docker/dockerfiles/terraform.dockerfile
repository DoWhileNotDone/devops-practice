FROM alpine

LABEL maintainer="davegthemighty@hotmail.com"

RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d / && \
    apk add ca-certificates

USER nobody

ENTRYPOINT [ "/terraform" ]