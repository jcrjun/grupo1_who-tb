#rodar UMA vez em cada computador (botão "Source").
pacotes <- c("shiny", "shinydashboard", "ggplot2", "ggiraph", "DT",
             "readr", "knitr", "rsconnect",
             "sf", "rnaturalearth", "rnaturalearthdata")  #sf e mapas: aba 3

install.packages(pacotes)
#se aparecer pedindo para reiniciar o R, aceite. Se aparecer perguntando sobre instalar a partir de codigo fonte ou algo do tipo, clica em não.
