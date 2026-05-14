FROM node:22-bookworm-slim

LABEL org.opencontainers.image.title="Msty Claw Runtime"
LABEL org.opencontainers.image.description="Default Linux runtime image for Msty Claw container-backed bots."
LABEL org.opencontainers.image.source="https://github.com/cloudstack-llc/msty-claw-container"
LABEL org.opencontainers.image.vendor="Msty"

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash \
        build-essential \
        ca-certificates \
        curl \
        dnsutils \
        fd-find \
        file \
        git \
        gzip \
        jq \
        less \
        libimage-exiftool-perl \
        lsof \
        make \
        nano \
        netcat-openbsd \
        openssh-client \
        p7zip-full \
        pandoc \
        pkg-config \
        poppler-data \
        poppler-utils \
        procps \
        python3 \
        python3-bs4 \
        python3-docx \
        python3-lxml \
        python3-openpyxl \
        python3-pil \
        python3-pip \
        python3-pypdf \
        python3-venv \
        qpdf \
        ripgrep \
        rsync \
        tar \
        tesseract-ocr \
        tesseract-ocr-eng \
        unzip \
        vim-tiny \
        wget \
        xz-utils \
        zip \
        zsh \
    && ln -sf /usr/bin/fdfind /usr/local/bin/fd \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

USER root

CMD ["sleep", "infinity"]
