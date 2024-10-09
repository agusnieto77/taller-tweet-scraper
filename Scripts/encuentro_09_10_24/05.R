# Script 05

# Cargamos la librería rvest para web scraping
library(rvest)

# Definimos la URL del perfil de Instagram que queremos analizar
url <- "https://www.instagram.com/sociologiaandaluza/"

# Leemos el contenido HTML de la URL usando read_html_live
# Esta función permite interactuar con contenido dinámico (JavaScript)
ig_aas <- rvest::read_html_live(url)

# Extraemos el texto de todos los elementos <body> y lo imprimimos
# El operador |> es un pipe que pasa el resultado de la izquierda como primer argumento de la función a la derecha
ig_aas$html_elements("body") |> rvest::html_text()

# Extraemos el texto de todos los elementos <body>, seleccionamos el tercer elemento (índice 3) y lo imprimimos
# cat() se usa para imprimir el texto sin comillas y con formato
cat(rvest::html_text(ig_aas$html_elements("body"))[3])
