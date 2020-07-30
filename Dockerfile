FROM node:12.18.3-buster-slim

# Initial update
RUN apt-get clean && apt-get update

# Container deps
RUN apt-get install -y git wget gnupg

# Install NodeJS
cl
RUN apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# Install GCP
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-stretch main" | tee /etc/apt/sources.list.d/google-cloud-sdk.list
RUN apt-get update && apt-get install -y google-cloud-sdk
