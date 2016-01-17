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
