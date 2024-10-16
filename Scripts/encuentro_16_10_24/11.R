# Script 11 - Extracción de tweets de Timeline

# Cargar la librería TweetScraperR
library(TweetScraperR)

(post_aas <- getTweetsTimeline("AAS_Sociologia", n_tweets = 400))
