
<!-- README.md is generated from README.Rmd. Please edit that file -->

# laquipedados

<!-- badges: start -->
<!-- badges: end -->

O objetivo deste repositório é servir de base para o livro
***Estatística Aplicada às Ciências Agrárias e Biológicas em R***.

<img src="images/Capa de Esta Pesqueira_3.png" width="40%" />

## Exemplo de carregamento de dados

Você pode carregar os conjunto de daos deste pacote com os comandos
abaixo:

``` r
library(readr)
url = "https://raw.githubusercontent.com/Evaldo-Martins-STAT/laquipedados/master/caranguejo.csv"
dados <- read_csv(url)
```

- Exibição dos dados de sua análise

  ``` r
  head(dados)
  #> # A tibble: 6 Ã 4
  #>   Sexo  Estacao    LC    CC
  #>   <chr> <chr>   <dbl> <dbl>
  #> 1 Macho Chuvosa    69    47
  #> 2 Macho Chuvosa    79    54
  #> 3 Macho Chuvosa    63    46
  #> 4 Macho Chuvosa    62    42
  #> 5 Macho Chuvosa    75    48
  #> 6 Macho Chuvosa    66    43
  ```
