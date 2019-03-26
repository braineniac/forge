FROM debian:stretch
MAINTAINER Daniel Hammer, braineniac@protonmail.com

RUN dpkg --add-architecture i386

RUN apt-get update

# yocto essential packages for debian/ubuntu
RUN apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat libsdl1.2-dev xterm -y

# Graphical and Eclipse Plug-In Extras
RUN apt-get install -y libsdl1.2-dev xterm

# Extra package for build with NXP's images
RUN apt-get install -y \
    sed cvs subversion coreutils texi2html \
    python-pysqlite2 help2man  gcc g++ \
    desktop-file-utils libgl1-mesa-dev libglu1-mesa-dev mercurial \
    autoconf automake groff curl lzop asciidoc u-boot-tools

# more extra packages
RUN apt-get install locales locales-all cpio -y

# Set the locale, else yocto will complain
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# default workdir is /yocto
WORKDIR /yocto

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
