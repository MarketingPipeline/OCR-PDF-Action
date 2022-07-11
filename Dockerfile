FROM debian:stable 
## Your python project dependencies
## For project usage: python3/python3-pip/chromium/xvfb
RUN apt-get update -y && apt-get install -y python3 python3-pip tesseract-ocr ghostscript


RUN pip3 install ocrmypdf


COPY entrypoint /usr/local/bin/

RUN ["chmod", "+x", "/usr/local/bin/entrypoint"]
ENTRYPOINT ["/usr/local/bin/entrypoint"]
