FROM kalilinux/kali

RUN apt -y update && apt -y upgrade && apt -y autoremove && apt clean
RUN apt install -y rsync libpipeline1 binfmt-support libpipeline1 qemu-user-static wget \
  xz-utils parted vim udev fdisk openssh-client

COPY . /app
WORKDIR /app
RUN mkdir .ssh
COPY id_rsa.pub .ssh/id_rsa.pub


