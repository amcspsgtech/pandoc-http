FROM node:lts-alpine

ENV PANDOC_VERSION 1.19
ENV NODE_ENV production

# RUN wget https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-1-amd64.deb && \
#     dpkg -i pandoc* && \
#     rm pandoc* && \
#     apt-get clean

WORKDIR /app

COPY ./ /app

RUN npm install

EXPOSE 80

CMD ["node", "server.js"]