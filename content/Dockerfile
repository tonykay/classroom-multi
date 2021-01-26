FROM docker.io/antora/antora as builder

ADD . /antora/

RUN antora generate --stacktrace site.yml

FROM registry.redhat.io/rhel8/httpd-24

COPY --from=builder /antora/gh-pages/ /var/www/html/
