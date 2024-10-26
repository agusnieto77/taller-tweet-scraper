# Script 14: Extracción de tweets de un perfil específico usando TweetScraperR

# Instalar la última versión de TweetScraperR (v. 0.1.0.11) desde GitHub
# Nota: Asegúrate de tener instalado el paquete 'devtools' antes de ejecutar esta línea
devtools::install_github("agusnieto77/TweetScraperR")

# Cargar la librería TweetScraperR
library(TweetScraperR)

# Definir el perfil de Twitter que queremos analizar
user <- "congosto"

# Iniciar sesión en Twitter
# Nota: Esta función abrirá una ventana del navegador para autenticación
openTwitter()

# Navegar hacia el perfil de interés
# Esta función carga la línea de tiempo del/la usuario/a especificado/a
openTimeline(username = user)

# Extraer tweets del perfil
# Capturamos hasta 30 tweets del timeline del/la usuario/a
# El resultado se guardará en un archivo RDS en el directorio de trabajo actual
getScrollExtract(objeto = timeline, username = user, n_tweets = 30)

# Cerrar la sesión del timeline
# Importante: Siempre cerrar el timeline después de la extracción para liberar recursos
closeTimeline()

# Cerrar la sesión de Twitter
# Esto cierra completamente la sesión iniciada con openTwitter()
closeTwitter()
