#
# Dockerfile for auto install xmllint on debian:jessie
#
# https://github.com/VSasyan/xmllint
#

# Pull base image.
FROM debian:jessie

# Install xmllint
RUN \
    apt-get update && apt-get install -y libxml2-utils

# Write the file
RUN \
    echo '#!/bin/sh' > check.sh
RUN \
    echo 'xmllint --noout xml/$1.xml --schema xml/$1.xsd' >> check.sh
RUN \
    chmod +x check.sh