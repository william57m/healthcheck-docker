FROM curlimages/curl:7.77.0

COPY healthcheck.sh /

CMD ["sh", "/healthcheck.sh"]
