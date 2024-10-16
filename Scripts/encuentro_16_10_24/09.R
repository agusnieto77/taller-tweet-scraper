# Script 09 - Extracción de tweets a búsqueda completa

# Cargar la librería TweetScraperR
library(TweetScraperR)

# Realizar una búsqueda avanzada de tweets
(estudiantazo <- getTweetsFullSearch(
  search_all = "Milei",               # Buscar tweets que contengan la palabra "Milei"
  search_exact = NULL,                # No se busca ninguna frase exacta
  search_any = NULL,                  # No se buscan palabras alternativas
  no_search = NULL,                   # No se excluyen palabras
  hashtag = "#UniversidadesTomadas",  # Buscar tweets con este hashtag
  lan = "es",                         # Filtrar tweets en español
  from = NULL,                        # No se filtra por usuario específico
  to = NULL,                          # No se filtra por tweets dirigidos a un usuario específico
  men = NULL,                         # No se filtra por menciones a usuarios específicos
  rep = 0,                            # No se requiere un mínimo de respuestas
  fav = 2,                            # Se requiere un mínimo de 2 favoritos
  rt = 0,                             # No se requiere un mínimo de retweets
  n_tweets = 20,                      # Recolectar hasta 20 tweets
))

# Obtener datos completos de los tweets recolectados
(estudiantazo_full_data <- getTweetsData(estudiantazo$url))
