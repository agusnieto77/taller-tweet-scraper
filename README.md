Taller sobre TweetScraperR
================
<p style="font-size:26px;">  
Una herramienta para la recolección de tweets en la era post-API  
</p>
Agustín Nieto (INHUS-CONICET/UNMdP)

### Descripción general

El taller será impartido en dos sesiones de tres horas cada una, con un
enfoque práctico en el uso de la biblioteca `TweetScraperR`. El objetivo
es que los participantes aprendan a recolectar tweets mediante scraping,
abordando desde los fundamentos de R y RStudio hasta las funciones
avanzadas de `TweetScraperR`. A lo largo del taller, se cubrirán las
diferencias entre el web scraping y las API REST, y se explorarán los
fundamentos de la recolección de datos de Twitter, una herramienta clave
en la investigación y análisis de redes sociales en la actualidad.

### Encuentro 1 (2024-10-09)

#### Introducción a R, RStudio y conceptos básicos de web scraping

#### 1. Introducción a R y RStudio

##### Objetivos:

- Familiarizar a los participantes con el entorno de R y RStudio.

##### Contenido:

- ¿Qué es R? Una breve historia y sus aplicaciones en análisis de datos.

- Instalación de R y RStudio en distintos sistemas operativos.

- Navegación por RStudio: consola, editor, entorno y panel de gráficos.

- Ejecución de comandos básicos en la consola.

- Creación y ejecución de scripts para automatizar tareas.

#### 2. Web Scraping vs API REST

##### Objetivos:

- Comprender las diferencias fundamentales entre el web scraping y las
  API REST, y cuándo utilizar cada uno.

##### Contenido:

- Definición de web scraping: ¿Qué es y por qué es relevante en la era
  post-API?

- Introducción a las API REST: Qué son, cómo funcionan, y cómo las
  empresas regulan el acceso a datos.

- Comparativa entre scraping y APIs en el contexto de la recolección de
  datos de Twitter: pros y contras.

#### 3. Introducción a la función `read_html_live()` de rvest

##### Objetivos:

- Aprender a extraer datos de páginas web utilizando la función
  `read_html_live()` de la librería `rvest`.

##### Contenido:

- Instalación y carga del paquete `rvest`.

- Introducción a `read_html_live()`: su sintaxis y aplicaciones.

##### Actividades:

- Extraer títulos de una página web dinámica y almacenar el resultado en
  un data frame.

### Encuentro 2 (2024-10-16)

#### Introducción a TweetScraperR y sus funcionalidades avanzadas

#### 1. Introducción a TweetScraperR

##### Objetivos:

- Conocer los fundamentos de la biblioteca `TweetScraperR` y cómo usarla
  para recolectar datos de Twitter.

##### Contenido:

- Instalación y configuración del paquete `TweetScraperR`.

- Estructura básica de las funciones en `TweetScraperR`: cómo acceder a
  los datos.

- Recolección básica de tweets utilizando palabras clave y hashtags.

##### Actividades:

- Buscar tweets que mencionen una palabra clave de interés y guardar los
  resultados.

#### 2. Funciones avanzadas de TweetScraperR I

#### Objetivos:

- Explorar las funcionalidades avanzadas de `TweetScraperR` para
  enriquecer los datos obtenidos.

##### Contenido:

- Búsqueda por perfiles de cuenta, y de tweets con información completa.

- Almacenamiento de los datos recolectados en formatos como RDS.

##### Actividades:

- Buscar tweets históricos por un hashtag relacionado con un evento del
  pasado reciente.

#### 3. Funciones avanzadas de TweetScraperR II

##### Contenido:

- Búsquedas en tiempo real con información completa.

- Implementación de un ciclo for para recolectar tweets completos en
  tiempo real.

##### Actividades:

- Buscar tweets por un hashtag relacionado con un evento que sea
  trending topic en [Trends 24](https://trends24.in/).

### Resultados esperados

Al final del taller, se tendrá una comprensión de:

- El R y RStudio.

- Las diferencias clave entre web scraping y API REST.

- Cómo extraer datos de páginas web dinámicas usando `rvest`.

- Las funciones clave de `TweetScraperR` para la recolección de tweets.

- Aplicar los conocimientos en un proyecto práctico de recolección y
  análisis de datos de Twitter.

Este plan de estudios está diseñado para que quienes participan no solo
comprendan los conceptos teóricos, sino que también tengan una
experiencia práctica con las herramientas que les permitirá utilizar
`TweetScraperR` en sus propios proyectos de análisis de redes sociales.

### Recursos

- [ChromeDriver](https://developer.chrome.com/docs/chromedriver/downloads)
- [Chrome for
  Testing](https://googlechromelabs.github.io/chrome-for-testing/)
- [Rvest](https://rvest.tidyverse.org/)
- [Chromote](https://rstudio.github.io/chromote/)
- [TweetScraperR](https://github.com/agusnieto77/TweetScraperR/)
- [Requisitos](https://github.com/agusnieto77/TweetScraperR/blob/main/Requisitos.md)
- [Código](https://github.com/agusnieto77/taller-tweet-scraper/tree/main/Scripts)
- [Aplicación Web](http://tweet-scraper.hlab.com.ar:7486/)

### Bibliografía

- Ledford, H. (2023). Researchers scramble as Twitter plans to end free
  data access. Nature, 614(7949), 602-603.

- Murtfeldt, R., Alterman, N., Kahveci, I., & West, J. D. (2024). RIP
  Twitter API: A eulogy to its vast research contributions
  (arXiv:2404.07340). arXiv. <https://doi.org/10.48550/arXiv.2404.07340>

- Nieto, A. (2024). TweetScraperR: una herramienta para la recolección
  de tweets en la era post-API. Rpub.
  <https://rpubs.com/agustin/tweet-scraper>

- Poudel & Weninger (2024) Navigating the Post-API Dilemma. In
  Proceedings of the ACM Web Conference 2024 (WWW ’24). Association for
  Computing Machinery, New York, NY, USA, 2476–2484.
  <https://doi.org/10.1145/3589334.3645503>

- Trezza D (2023) To scrape or not to scrape, this is dilemma. The
  post-API scenario and implications on digital research. Front. Sociol.
  8:1145038. doi: 10.3389/fsoc.2023.1145038
