FROM wordpress:latest

ADD update-entrypoint.sh .
ADD score_base.py .
RUN apt-get update && apt-get install -y python
RUN ls
COPY update-entrypoint.sh /usr/local/bin/
RUN ls /usr/local/bin
EXPOSE 80
EXPOSE 12345
ENTRYPOINT ["/bin/bash","update-entrypoint.sh"]
