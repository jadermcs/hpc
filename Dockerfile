FROM ubuntu:20.04

RUN apt update && \
        apt install -y bash \
        time \
        neovim \
        build-essential \
        gcc \
        linux-tools-common \
        linux-tools-generic \
        linux-tools-`uname -r` \
        llvm \
        clang

        COPY . /workspace
        WORKDIR /workspace

        CMD ["/bin/bash"]
