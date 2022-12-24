FROM node:current-buster-slim
RUN whoami
RUN npm install -g serverless@3.26.0; serverless -v
RUN apt-get update -y; apt-get install curl -y; apt-get install zip -y
RUN apt-get install --reinstall make
WORKDIR /sls/package
