ARG VARIANT="16"

FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:${VARIANT}

RUN apt-get -y update --no-install-recommends \
 && apt-get -y install --no-install-recommends \
      texlive-full \
 && apt-get autoremove -y \
 && apt-get clean -y

USER node
WORKDIR /home/node

RUN mkdir -p .config/git \
 && echo ".vscode/*" >> .config/git/ignore \
 && echo "*.code-workspace" >> .config/git/ignore \
 && echo ".history/" >> .config/git/ignore
 
