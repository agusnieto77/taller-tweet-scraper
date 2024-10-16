# Script 08 - Extracción de respuestas a un tweet específico

# Cargar la librería TweetScraperR
require(TweetScraperR)

# Definir la URL del post (tweet) del cual se desean obtener las respuestas
url_post <- "https://x.com/Picanumeros/status/1610715405705789442"

# Obtener las URLs de las respuestas al tweet original.
# La función `getUrlsTweetsReplies` devuelve las URLs de las respuestas de un tweet en particular.
(urls_replies <- getUrlsTweetsReplies(url_post, n_urls = 150))

# Extraer los datos de las primeras 20 respuestas usando las URLs obtenidas.
# `getTweetsData` toma las URLs de los tweets y extrae información relevante como el texto, autor, fecha, etc.
(data_replies <- getTweetsData(urls_replies[1:20]))
