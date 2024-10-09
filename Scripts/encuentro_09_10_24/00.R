# Script 00

# Función para instalar paquetes si no están instalados
install_if_missing <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  if(length(new_packages)) install.packages(new_packages)
}

# Lista de paquetes necesarios
packages <- c("wdman", "binman")

# Instalar paquetes si no están instalados
install_if_missing(packages)

# Cargar las librerías
library(wdman)
library(binman)

# Verificar las versiones instaladas
message("Versión de wdman: ", packageVersion("wdman"), "\n")
message("Versión de binman: ", packageVersion("binman"), "\n")

# Esta línea lista todas las versiones disponibles de chromedriver
# que binman puede gestionar. Es útil para ver qué versiones
# están disponibles para usar.
binman::list_versions("chromedriver")

# Esta línea inicia un servidor Selenium usando wdman.
# - retcommand = TRUE hace que la función devuelva el comando
#   que se usaría para iniciar el servidor, en lugar de iniciarlo.
# - check = FALSE desactiva la verificación de si el servidor
#   ya está en ejecución.
# Es útil para obtener el comando de inicio del servidor Selenium
# sin realmente iniciarlo, lo que puede ser útil para depuración
# o para usar el comando en otros contextos.
wdman::selenium(retcommand = TRUE, check = FALSE)
