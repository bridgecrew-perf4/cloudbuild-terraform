
FROM google/cloud-sdk:slim
LABEL maintainer="engineering@compensate.com"

RUN  apt-get -y install unzip && \
    curl -o terraform.zip https://releases.hashicorp.com/terraform/0.14.2/terraform_0.14.2_linux_amd64.zip && \
    unzip terraform.zip && \
    chmod +x terraform && \
    mv terraform /usr/local/bin && \
    apt-get -y remove unzip && \
    apt-get clean && \
    rm terraform.zip
