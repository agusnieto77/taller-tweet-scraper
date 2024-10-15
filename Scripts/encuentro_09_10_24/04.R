# Script 04

# Cargamos la librería rvest para web scraping
library(rvest)

# Definimos un vector con dos URLs de tweets
urls  <- c("https://x.com/AAS_Sociologia/status/1844666834886283607",
           "https://x.com/AAS_Sociologia/status/1844776108778000410",
           "https://x.com/AAS_Sociologia/status/1838907832927768645",
           "https://x.com/AAS_Sociologia/status/1841819590587822081")

# Seleccionamos la primera URL del vector
url_01 <- urls[1]

# Leemos el contenido HTML de la primera URL usando read_html_live
# Esta función permite interactuar con contenido dinámico (JavaScript)
tweet_01 <- rvest::read_html_live(url_01)

# Extraemos todos los elementos <article> del HTML
# Los tweets suelen estar contenidos en elementos <article>
tweet_01_art <- tweet_01$html_elements("article")

# Imprimimos los elementos <article> encontrados
print(tweet_01_art)

# Extraemos el texto de los elementos <article>
tweet_01_article_text <- rvest::html_text2(tweet_01_art)

# Imprimimos el texto extraído de los elementos <article>
print(tweet_01_article_text)

# Imprimimos un salto de línea y una página nueva
cat("\n\14")

# Imprimimos el texto del primer elemento <article> encontrado
# Esto debería contener el texto principal del tweet
cat(tweet_01_article_text[1])

# Cerramos la sesión de Twitter
tweet_01$session$close()
