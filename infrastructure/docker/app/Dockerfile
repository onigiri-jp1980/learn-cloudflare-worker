FROM python:3.14-slim
ARG USER_NAME
ARG USER_ID
ARG GROUP_ID

RUN apt update && apt install -y curl bash sudo && \
    pip install cloudflare-cli
    #npm install -g npm@10.9.0 osls && \
    #npm install -g npm@10.9.0 serverless@3.37.0 serverless-cloudflare-workers@1.1.0 serverless-offline@12.0.0 npx


# 非rootユーザーで実行するために、nodeユーザーをsudoersに追加
RUN which bash && bash --version && cat /etc/passwd && \
    echo "node ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/node

# USER node
# COPY --chown=node:node ./src/package.json ./src/package-lock.json /app/src/
# COPY --chown=node:node ./src/serverless.yml /app
# WORKDIR /app
ENTRYPOINT ["/bin/bash"]
CMD ["-i"]
