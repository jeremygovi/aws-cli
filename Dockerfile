FROM python:3.8-slim
RUN apt-get update && apt-get install -y make gcc
RUN pip3 install --upgrade awscli==1.14.5 s3cmd==2.0.1
RUN pip3 install boto3 paramiko
COPY run_command_to_ec2 /project/run_command_to_ec2
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
