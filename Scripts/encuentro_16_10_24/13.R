# Script 13

# Cargar Rvest
library(rvest)

# Definir la URL del tweet que se va a analizar
url = "https://x.com/Picanumeros/status/1610715405705789442"

# Obtener el nombre de usuario y la contraseña de las variables de entorno
xuser = Sys.getenv("USER")
xpass = Sys.getenv("PASS")

# Cargar la página de inicio de sesión de Twitter
twitter <- rvest::read_html_live("https://x.com/i/flow/login")

# Abrir una ventana del navegador para visualizar la página de inicio de sesión
twitter$view()

# Definir los selectores CSS para los elementos de la página de inicio de sesión
userx <- "#layers > div > div > div > div > div > div > div.css-175oi2r > div.css-175oi2r > div > div > div.css-175oi2r > div.css-175oi2r > div > div > div > div.css-175oi2r > label > div > div.css-175oi2r > div > input"
nextx <- "#layers div > div > div > button:nth-child(6) > div"
passx <- "#layers > div > div > div > div > div > div > div > div > div > div > div > div > div > div > div > div > div > label > div > div > div > input"
login <- "#layers > div > div > div > div > div > div > div.css-175oi2r > div.css-175oi2r > div > div > div.css-175oi2r > div.css-175oi2r.r-16y2uox > div.css-175oi2r > div > div.css-175oi2r > div > div > button"

# Ingresar el nombre de usuario y hacer clic en "Siguiente"
twitter$type(css = userx, text = xuser)
twitter$click(css = nextx, n_clicks = 1)

# Ingresar la contraseña y hacer clic en "Iniciar sesión"
twitter$type(css = passx, text = xpass)
twitter$click(css = login, n_clicks = 1)

# Cargar la página del tweet especificado
urlok <- rvest::read_html_live(url)

# Abrir una ventana del navegador para visualizar el tweet y las respuestas
urlok$view()

# Definir el XPath para los enlaces de los tweets
url_tweet <- "/html/body/div[1]/div/div/div[2]/main/div/div/div/div[1]/div/section/div/div/div/div/div/article/div/div/div[2]/div[2]/div[1]/div/div[1]/div/div/div[2]/div/div[3]/a"

# Inicializar un vector vacío para almacenar las URLs de los tweets
tweets_urls <- c()

# Bucle para recopilar URLs de tweets (se repite 6 veces)
for (i in 1:6) {
  # Extraer las URLs de los tweets de la página actual
  urls_tweets <- rvest::html_attr(urlok$html_elements(xpath = url_tweet),"href")

  # Filtrar solo las URLs que contienen "/status/"
  urls_tweets <- urls_tweets[grep("/status/", urls_tweets)]

  # Identificar nuevas URLs de tweets
  new_tweets <- unique(urls_tweets[!urls_tweets %in% tweets_urls])

  # Añadir las nuevas URLs al vector de tweets_urls
  tweets_urls <- unique(append(tweets_urls, new_tweets))

  # Desplazarse hacia abajo en la página
  urlok$scroll_by(top = 4000, left = 0)

  # Esperar 5 segundos antes de la siguiente iteración
  Sys.sleep(5)
}

# Cerrar la sesión de la página del tweet
urlok$session$close()

# Cerrar la sesión de Twitter
twitter$session$close()

# Imprimir las URLs de los tweets recopilados
print(tweets_urls)
