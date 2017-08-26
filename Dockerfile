FROM node:alpine

# Install TiddlyWiki Globally
RUN npm install -g tiddlywiki

# Setup wiki volume
VOLUME /usr/src/tiddlywiki
WORKDIR /usr/src/tiddlywiki

# Add init-and-run script
ADD init-and-run-wiki /usr/local/bin/init-and-run-wiki

# Meta
CMD ["/usr/local/bin/init-and-run-wiki"]
EXPOSE 8080
