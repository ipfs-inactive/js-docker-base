FROM node:6.9.4

ENV DISPLAY :99.0
ENV CHROME_BIN /usr/bin/google-chrome

WORKDIR /usr/src/app

RUN apt-get update; \
    apt-get install -y git curl sudo; \
    curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - ; \
    sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'; \
    apt-get update && apt-get install -y google-chrome-stable Xvfb; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN adduser --disabled-password --gecos "" tester

COPY xvfb.sh /etc/init.d/xvfb
COPY entrypoint.sh /entrypoint.sh

ONBUILD COPY package.json /usr/src/app/package.json
ONBUILD RUN npm install
ONBUILD COPY . /usr/src/app
ONBUILD RUN chown -R tester /usr/src/app

CMD ["npm", "start"]
ENTRYPOINT ["/entrypoint.sh"]
