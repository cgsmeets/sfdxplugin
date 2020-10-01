FROM node:10.13-alpine

ENV SFDX_AUTOUPDATE_DISABLE true

RUN apk add --update --no-cache git jq curl openssl

# install latest sfdx from npm
RUN npm install --global --production sfdx-cli 

RUN npm 
RUN sfdx --version
RUN sfdx plugins --core

CMD ["sfdx", "--version"]
