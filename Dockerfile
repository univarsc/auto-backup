FROM python:3.8-slim

RUN apt-get update && \
    apt-get install -y curl python git && \
    rm -rf /var/lib/apt/lists/*

RUN python -m pip install six
RUN curl -s https://shopify.github.io/themekit/scripts/install.py | python

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
