# Script 10 - Extracción de tweets de Timeline

# Cargar la librería TweetScraperR
library(TweetScraperR)

(urls_post_aas <- getUrlsTweetsTimeline("AAS_Sociologia", n_urls = 100))

(data_post_aas <- getTweetsData(urls_post_aas))
