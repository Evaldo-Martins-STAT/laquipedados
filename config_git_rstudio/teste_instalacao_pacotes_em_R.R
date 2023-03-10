#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#
#                  TESTE DE INSTALAÇÃO DE PACOTES NO R
#
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

#1) Instale pacotes que precisam de compilação --------------------------------

install.packages("jsonlite", type = "source")
install.packages("psych", type = "source")
install.packages("geosphere", type = "source")
library(jsonlite)
library(psych)
library(geosphere)

#  2. Instale o devtools e IDE Rcmdr-------------------------------------------

install.packages("devtools")
install.packages("Rcmdr", dependencies = T)
library(Rcmdr)

#  3. Instalar pacote da Bioconductor -----------------------------------------

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("EBImage")
library(EBImage)

#  4. instale o tinytex -------------------------------------------------------
#   Se parece algum erro do pacote 00Lock, vá na pasta Library e 
#   delete a sua pasta

install.packages("tinytex")
tinytex::install_tinytex()

#  5. Instale o h2o para Machine learning (Redes Neurais, etc.) -----------------

install.packages("h2o")
# veja em: https://docs.h2o.ai/h2o/latest-stable/h2o-docs/downloading.html
# Mas pode ser lenta a conexão e não instalar

#   6) Pacotes binários diversos do CRAN
install.packages("readxl")
