FROM debian:stable 
## Your python project dependencies

RUN pip3 install ocrmypdf


COPY entrypoint /usr/local/bin/

RUN ["chmod", "+x", "/usr/local/bin/entrypoint"]
ENTRYPOINT ["/usr/local/bin/entrypoint"]
