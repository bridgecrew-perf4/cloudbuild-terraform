FROM google/cloud-sdk:alpine
LABEL maintainer="engineering@compensate.com"

RUN apk --no-cache add curl unzip && \
    curl -o terraform.zip https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_linux_amd64.zip && \
    unzip terraform.zip && \
    chmod +x terraform && \
    mv terraform /usr/local/bin && \
    rm terraform.zip
