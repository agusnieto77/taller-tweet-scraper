# Función para instalar paquetes si no están instalados
install_if_missing <- function(packages) {
  # Identifica los paquetes que no están instalados
  new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  # Si hay paquetes no instalados, los instala
  if(length(new_packages)) install.packages(new_packages)
}

# Lista de paquetes necesarios
packages <- c("rvest", "chromote", "devtools")

# Instalar paquetes si no están instalados
install_if_missing(packages)

# Instala el paquete TweetScraperR desde GitHub
devtools::install_github("agusnieto77/TweetScraperR")

# Carga la librería TweetScraperR
library(TweetScraperR)

# Abre una sesión de Twitter
TweetScraperR::openTwitter()

# Obtiene las URLs de los 10 primeros tweets que contienen el hashtag #RStats
urls <- TweetScraperR::getUrlsTweetsSearch(search = "#RStats", n_urls = 10)

# Obtiene los datos de los tweets a partir de las URLs
tweets_r <- TweetScraperR::getTweetsData(urls)

# Extrae los tweets recuperados
tweets_recuperados <- tweets_data$tweets_recuperados

# Obtiene los enlaces de las imágenes de los posts
links_img_post <- tweets_recuperados$links_img_post

# Descarga las imágenes de los tweets
TweetScraperR::getTweetsImages(links_img_post)

# Realiza una búsqueda en streaming de tweets que contienen la palabra "Milei"
TweetScraperR::getTweetsSearchStreamingFor(
  iterations = 3,         # Número de iteraciones
  search = "Milei",       # Término de búsqueda
  n_tweets = 15,          # Número de tweets por iteración
  dir = "./data/tweets",  # Directorio donde se guardarán los datos
  system = "windows",     # Sistema operativo
  sleep_time = 5          # Tiempo de espera entre iteraciones (en segundos)
)
