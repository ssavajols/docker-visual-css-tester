
FROM ubuntu:latest

ENV AP /home/visual-css-tester
ENV PHANTOM_DIR /home/phantomjs

## Intall apps
RUN apt-get update -y
RUN apt-get install -y \
            git \
            phantomjs \
            nodejs=0.10.25~dfsg2-2ubuntu1 \
            npm=1.3.10~dfsg-1 \
            python=2.7.5-5ubuntu3


## Installation node
RUN ln -sf /usr/bin/nodejs /usr/bin/node

## Installation casperJS 1.0.4
RUN git clone --branch 1.0.4 git://github.com/n1k0/casperjs.git /opt/casperjs
RUN ln -sf /opt/casperjs/bin/casperjs /usr/bin/

## Installation sample visual css tester project
RUN git clone https://github.com/ssavajols/visual-css-tester.git $AP

WORKDIR $AP/

## Install node modules
RUN npm install visual-css-tester@1.0.0
RUN npm install -g phantomjs@1.8.x


## Désinstaller les applications inutiles
RUN apt-get -y remove \
               git \
               npm

CMD ["nodejs", "app.js"]
#CMD ["/bin/bash"]

