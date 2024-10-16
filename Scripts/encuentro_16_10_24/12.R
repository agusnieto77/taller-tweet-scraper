# Script 12 - Extracción de tweets Históricos

# Cargar la librería TweetScraperR
library(TweetScraperR)

(hashtag_8m <- getTweetsHistoricalHashtag(hashtag = "#8M",  n_tweets = 300,  since = "2018-03-07",  until = "2018-03-09"))
