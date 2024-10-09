# Script 03

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

# Leemos el contenido HTML de la primera URL usando read_html_live
# Esta función permite interactuar con contenido dinámico (JavaScript)
tweet_01 <- rvest::read_html_live(url_01)

# Abrimos una ventana del navegador para visualizar el contenido de la página
tweet_01$view()

# Imprimimos el objeto tweet_01
print(tweet_01)

# Verificamos la clase del objeto tweet_01
class(tweet_01)

# Extraemos todos los elementos <head> del HTML
tweet_01_head <- tweet_01$html_elements("head")

# Imprimimos los elementos <head>
print(tweet_01_head)

# Verificamos la clase del objeto tweet_01_head
class(tweet_01_head)

# Extraemos el texto de los elementos <head>
tweet_01_head_text <- rvest::html_text2(tweet_01_head)

# Imprimimos el texto extraído de los elementos <head>
print(tweet_01_head_text)

# Verificamos la clase del objeto tweet_01_head_text
class(tweet_01_head_text)

# Extraemos todos los elementos <body> del HTML
tweet_01_body <- tweet_01$html_elements("body")

# Imprimimos los elementos <body>
print(tweet_01_body)

# Extraemos el texto de los elementos <body>
tweet_01_body_text <- rvest::html_text2(tweet_01_body)

# Imprimimos el texto extraído de los elementos <body>
print(tweet_01_body_text)
