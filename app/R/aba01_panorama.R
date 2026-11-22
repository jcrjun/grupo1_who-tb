#para criar outra aba: copie este arquivo e troque "aba01" pelo numero da sua aba (ex.: aba03_mapa.R, aba03_ui, aba03_server).
#cada aba tem duas funções:
#aba01_ui() -> o que o usuário VÊ (seletores, gráfico, tabela)
#aba01_server() -> o que o app CALCULA (reage aos seletores)
#cada aba precisa de: seletores específicos, 1 gráfico e 1 tabela.

aba01_ui <- function(id) {
  ns <- NS(id)   #garante que os seletores desta aba não se misturem com os de outra

  tagList(
    fluidRow(
      box(title = "Seletores", status = "primary", solidHeader = TRUE, width = 3,
          #SELETORES AQUI (ex.: selectInput(ns("ano"), ...))
          "Seletores em construção"),
      box(title = "Gráfico", width = 9,
          #GRÁFICO AQUI (ex.: girafeOutput(ns("grafico")))
          "Gráfico em construção")
    ),
    fluidRow(
      box(title = "Tabela", width = 12,
          #TABELA AQUI (ex.: DTOutput(ns("tabela")))
          "Tabela em construção")
    )
  )
}

aba01_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    #CÁLCULOS, GRÁFICO E TABELA AQUI QUANDO TIVER OS DADOS
    #output$grafico <- renderGirafe({ ... })
    #output$tabela  <- renderDT({ ... })
  })
}
