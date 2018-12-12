FROM infiniteproject/torify:latest
LABEL Maintainer="James D. Bohrman"
WORKDIR /lumos/lumos/spiders/

ADD . /lumos/
COPY /lumos/requirements.txt/ /app/

RUN apt-get update
RUN apt-get -y install python-pip
RUN pip install -r ../requirements.txt

COPY . .
EXPOSE 80
CMD scrapy crawl TweetScraper.py