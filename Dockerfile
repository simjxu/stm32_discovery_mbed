FROM ubuntu:18.04
WORKDIR /work

# Add all files to the "work" directory
ADD . /work

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
# Development files
        build-essential \
        git \
        bzip2 \
        wget && \
    apt-get clean

RUN wget -qO- https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 | tar -xj

ENV PATH "/work/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"