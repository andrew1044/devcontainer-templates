ARG VARIANT="11-bullseye"
FROM "mcr.microsoft.com/devcontainers/java:${VARIANT}"

ARG USER=vscode
ARG GROUP=vscode

ENV DEBIAN_FRONTEND=noninteractive

RUN set -ex; \
    apt-get update; \
    # Set m.2 cache and scripts folder
    mkdir -p /home/$USER/.m2 /home/$USER/scripts; \
    chown -R $USER:$GROUP /home/$USER; \
    # Install packages
    apt-get install -y  --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg2 \
        software-properties-common \
        time \
        neovim \
        htop \
        less \
        jq \
        lsof \
        zip \
        unzip \
        openssh-client iproute2 lsb-release \
    # cleanup
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* \
    # setup scripts dir
    && mkdir -p /home/$USER/scripts \
    && chmod +x /home/$USER/scripts/*.sh


# Install docker
RUN set -ex; \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt-get update \
    && apt-get -y install --no-install-recommends docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && usermod -aG docker $USER \
    && newgrp docker \
    && service docker start

ENTRYPOINT ["/home/vscode/scripts/entrypoint.sh"]