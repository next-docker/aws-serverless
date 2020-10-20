FROM node:14.14.0-buster-slim
RUN whoami
RUN npm install -g serverless@2.7.0; serverless -v
RUN apt-get update -y; apt-get install curl -y; apt-get install zip -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; unzip awscliv2.zip; ./aws/install
RUN ls -lrth; ls -lrth ./.aws/; rm -fR awscliv2.zip
RUN apt-get install --reinstall make
RUN aws --version
