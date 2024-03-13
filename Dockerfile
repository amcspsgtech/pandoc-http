FROM node:lts
# ENV PANDOC_VERSION 1.19
# ENV NODE_ENV production

RUN wget https://github.com/jgm/pandoc/releases/download/3.1.12.2/pandoc-3.1.12.2-1-amd64.deb
RUN dpkg -i pandoc*
RUN rm pandoc*
RUN apt-get clean

WORKDIR /app

COPY ./ /app

RUN npm install

EXPOSE 80

CMD ["node", "server.js"]