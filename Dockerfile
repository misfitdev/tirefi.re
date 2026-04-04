FROM jekyll/jekyll:pages
# Base image is Alpine without build tools. Native gem extensions
# (bigdecimal, etc.) need a C compiler — install it here so it's
# baked into the image layer rather than installed on every startup.
USER root
RUN apk add --no-cache build-base
USER jekyll
