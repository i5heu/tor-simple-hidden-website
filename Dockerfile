FROM debian:buster-slim

RUN apt-get update && apt-get -y update && apt-get install -y --no-install-recommends
RUN apt-get install -y nginx tor

# Security and permissions
# RUN useradd --system --uid 666 -M --shell /usr/sbin/nologin --home /home/torusr torusr

# Configure nginx logs to go to Docker log collection (via stdout/stderr)
RUN ln --symbolic --force /dev/stdout /var/log/nginx/access.log
RUN ln --symbolic --force /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/lib/tor", "/etc/tor", "/var/log/tor", "/etc/nginx/sites-enabled", "/var/www/html"]

# USER 666
CMD ["sh", "-c", "nginx ; exec tor"]
