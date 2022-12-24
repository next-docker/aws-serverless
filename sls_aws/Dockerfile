ARG parent_image
FROM $parent_image
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; unzip awscliv2.zip; ./aws/install
RUN ls -lrth; ls -lrth ./.aws/; rm -fR awscliv2.zip
RUN aws --version
