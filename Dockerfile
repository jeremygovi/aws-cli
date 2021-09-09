FROM alpine:3.6
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        bash \
        openssh \
        && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
COPY run_command_to_ec2 /project/run_command_to_ec2
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
