#app.R - esqueleto do aplicativo Shiny (10 abas)
#AINDA SEM DADOS: por enquanto não precisa rodar.
#para criar uma aba nova: copie aba01_panorama.R, troque o número, e substitua o "aba_vazia" da aba aqui embaixo (no ui) e descomente
#a linha da aba no server. Só o app.R é compartilhado, então alterações aqui devem ser pequenas e enviadas rápido por Pull Request.

library(shiny)
library(shinydashboard)
library(ggplot2)
library(ggiraph)
library(DT)

#Carrega os arquivos da pasta R/ (funções e abas)
for (arq in list.files("R", pattern = "^(funcoes|aba).*\\.R$",
                       full.names = TRUE)) {
  source(arq, encoding = "UTF-8")
}

#DADOS
#ARQUIVO AQUI QUANDO TIVER: banco tratado (gerado por R/01_limpeza.R)
#dados <- readRDS("dados/who_tb_tratado.rds")

#Aba ainda não construída
aba_vazia <- function(titulo) {
  box(title = titulo, width = 12, status = "warning", "Em construção.")
}

ui <- dashboardPage(
  dashboardHeader(title = "Tuberculose no mundo"),
  dashboardSidebar(
    sidebarMenu(
      id = "menu",
      menuItem("1. Panorama global",          tabName = "aba01", icon = icon("globe")),
      menuItem("2. Tendência no tempo",       tabName = "aba02", icon = icon("chart-line")),
      menuItem("3. Mapa mundial",             tabName = "aba03", icon = icon("map")),
      menuItem("4. Ranking de países",        tabName = "aba04", icon = icon("list")),
      menuItem("5. Comparação entre regiões", tabName = "aba05", icon = icon("chart-bar")),
      menuItem("6. Mortalidade e HIV",        tabName = "aba06", icon = icon("heart")),
      menuItem("7. Detecção x letalidade",    tabName = "aba07", icon = icon("search")),
      menuItem("8. Relação entre variáveis",  tabName = "aba08", icon = icon("chart-bar")),
      menuItem("9. Perfil de um país",        tabName = "aba09", icon = icon("flag")),
      menuItem("10. Inferência",              tabName = "aba10", icon = icon("calculator"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem("aba01", aba01_ui("aba01")),
      tabItem("aba02", aba_vazia("2. Tendência no tempo")),
      tabItem("aba03", aba_vazia("3. Mapa mundial")),
      tabItem("aba04", aba_vazia("4. Ranking de países")),
      tabItem("aba05", aba_vazia("5. Comparação entre regiões")),
      tabItem("aba06", aba_vazia("6. Mortalidade com e sem HIV")),
      tabItem("aba07", aba_vazia("7. Detecção de casos x letalidade")),
      tabItem("aba08", aba_vazia("8. Relação entre variáveis")),
      tabItem("aba09", aba_vazia("9. Perfil de um país")),
      tabItem("aba10", aba_vazia("10. Inferência"))
    )
  )
)

server <- function(input, output, session) {
  aba01_server("aba01")
  # aba02_server("aba02")   #descomentar quando a aba existir
  # aba03_server("aba03")
  # aba04_server("aba04")
  # aba05_server("aba05")
  # aba06_server("aba06")
  # aba07_server("aba07")
  # aba08_server("aba08")
  # aba09_server("aba09")
  # aba10_server("aba10")
}

shinyApp(ui, server)
