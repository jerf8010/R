library(rvest)
library(xml2)
library(dplyr)
library(tibble)

link <- "https://www.tripadvisor.es/Restaurant_Review-g150807-d8606874-Reviews-Restaurante_Careyes-Cancun_Yucatan_Peninsula.html"

fecha <- read_html(link) %>% 
  html_nodes(".ratingDate") %>%
  html_text() %>%
  enframe("id", "fechas")
fecha

resena <- read_html(link) %>% 
  html_nodes(".partial_entry") %>%
  html_text() %>%
  enframe("id", "Reseña")

resena
