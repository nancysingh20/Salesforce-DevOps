FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    unzip \
    git \
    nodejs \
    npm

RUN npm install --global @salesforce/cli

RUN sf --version

USER jenkins
