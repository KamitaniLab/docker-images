FROM ubuntu:20.04

ENV USER_NAME=user

RUN apt-get update && apt-get install sudo

RUN echo "${USER_NAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/${USER_NAME}

RUN chmod u+s /usr/sbin/useradd && chmod u+s /usr/sbin/groupadd

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]

