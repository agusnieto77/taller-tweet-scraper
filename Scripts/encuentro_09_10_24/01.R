# Script 01

# Cargamos la librería rvest para web scraping
library(rvest)

# Definimos un vector con dos URLs de tweets
urls  <- c("https://x.com/AAS_Sociologia/status/1838907832927768645", "https://x.com/AAS_Sociologia/status/1841819590587822081")

# Imprimimos el vector de URLs
print(urls)

# Seleccionamos la primera URL del vector
url_01 <- urls[1]

# Imprimimos la primera URL
print(url_01)

# Leemos el contenido HTML de la primera URL
tweet_01 <- rvest::read_html(url_01)

# Imprimimos el contenido HTML del tweet
print(tweet_01)

# Verificamos la clase del objeto tweet_01
class(tweet_01)

# Extraemos el elemento <head> del HTML
tweet_01_head <- rvest::html_element(tweet_01, "head")

# Imprimimos el contenido del elemento <head>
print(tweet_01_head)

# Verificamos la clase del objeto tweet_01_head
class(tweet_01_head)

# Extraemos el texto del elemento <head>
tweet_01_head_text <- rvest::html_text2(tweet_01_head)

# Imprimimos el texto extraído del <head>
print(tweet_01_head_text)

# Verificamos la clase del objeto tweet_01_head_text
class(tweet_01_head_text)

# Extraemos el elemento <body> del HTML
tweet_01_body <- rvest::html_element(tweet_01, "body")

# Imprimimos el contenido del elemento <body>
print(tweet_01_body)

# Extraemos el texto del elemento <body>
tweet_01_body_text <- rvest::html_text2(tweet_01_body)

# Imprimimos el texto extraído del <body>
print(tweet_01_body_text)
