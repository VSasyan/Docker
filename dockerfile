# Dockerfile for auto install xmllint on debian:jessie
FROM debian:jessie

RUN apt-get update && apt-get install -y libxml2-utils
