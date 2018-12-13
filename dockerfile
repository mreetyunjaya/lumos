FROM python:3.6.1

RUN pip install scrapy
RUN pip install requests
RUN mkdir /crawler
WORKDIR /crawler
ADD /lumos/lumos/spiders/TweetScraper.py .

CMD scrapy runspider TweetScraperr.py
