FROM ubuntu:20.04

# Stupid workaround for debian trying to be interactive and helpful
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y lua5.3 liblua5.3-dev luarocks
RUN luarocks install luafilesystem
RUN luarocks install busted
RUN luarocks install luastatic
RUN luarocks install luacheck

COPY ./ ./var/www/html
WORKDIR /var/www/html

CMD ["/bin/bash"]
