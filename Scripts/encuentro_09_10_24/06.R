# Script 06

# Cargamos la librería rvest para web scraping
library(rvest)

# Definimos la URL de un post específico de Facebook que queremos analizar
url <- "https://www.facebook.com/sociologiaandaluza/posts/pfbid0wJx4zDTryqw6bTxgtd7UTTUS6ZWRe5hh8XUg15fgDw14fXgLaCsJnCeCi8hnxdkvl"

# Leemos el contenido HTML de la URL usando read_html_live
# Esta función permite interactuar con contenido dinámico (JavaScript)
fb_aas <- rvest::read_html_live(url)

# Extraemos el texto de todos los elementos <body> y lo imprimimos
# El operador |> es un pipe que pasa el resultado de la izquierda como primer argumento de la función a la derecha
ejemplo <- fb_aas$html_elements("body") |> rvest::html_text()

ejemplo[2]

# Definimos un selector CSS específico para el contenido que queremos extraer de Facebook
tag <- ".xu06os2.x1ok221b"

# Extraemos el texto de los elementos que coinciden con el selector CSS y lo imprimimos
# cat() se usa para imprimir el texto sin comillas y con formato
cat(rvest::html_text(fb_aas$html_elements(tag)))
