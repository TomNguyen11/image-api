FROM strongloop/strong-pm

USER root
RUN npm install --global \
    strongloop \
    # yarn \
    && npm cache clear \
    && sl-pm-install \
    && yarn --version

WORKDIR /usr/app
