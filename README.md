# Msty Claw Container Runtime

Default Linux runtime image for Msty Claw container-backed bots.

```sh
docker pull ghcr.io/cloudstack-llc/msty-claw-container:bookworm
```

## What's Included

- Debian Bookworm slim base through `node:22-bookworm-slim`
- Node.js 22 and npm
- Python 3, pip, and venv
- Git and OpenSSH client
- Curl, wget, CA certificates, and network diagnostics
- Build tools for native package installs
- Common CLI utilities including `jq`, `ripgrep`, `fd`, archive tools, editors, and shells

## Extend It

```Dockerfile
FROM ghcr.io/cloudstack-llc/msty-claw-container:bookworm

RUN apt-get update \
    && apt-get install -y --no-install-recommends your-package \
    && rm -rf /var/lib/apt/lists/*
```
