
<!-- README.md is generated from README.Rmd. Please edit that file -->

# laquipedados

<!-- badges: start -->
<!-- badges: end -->

O objetivo deste repositório é servir de base para o livro
***Estatística Aplicada às Ciências Agrárias e Biológicas em R***. Você
pode baixar esses dados que podem ser usados numa determinada análise
presentes em um de seus capítulos. Todos esses dados são de pesquisas
póprias ou de autores que forneceram ou autoriaram gentilmente seus
usos.

<img src="images/Capa de Esta Pesqueira_3.png" width="40%" />

## Exemplo de carregamento de dados

Você pode carregar os conjunto de daos deste pacote com os comandos
abaixo:

``` r
library(readr)
url = "https://raw.githubusercontent.com/Evaldo-Martins-STAT/laquipedados/master/dados/aquifero.csv"
dados <- read_csv(url)
```

- Exibição dos dados de sua análise

  ``` r
  head(dados)
  #> # A tibble: 6 Ã 7
  #>   Amostra  HCO3   SO4    Cl    Ca    Mg    Na
  #>   <chr>   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
  #> 1 E01      10.4  30    967.  95.9  53.7  858.
  #> 2 E02       6.2  29.6 1175. 112.   43.9 1055.
  #> 3 E03       2.1  11.4 2387. 348.  119.  1932.
  #> 4 E04       8.5  22.5 2186. 340.   73.6 1803.
  #> 5 E05       6.7  32.8 2016. 288.   75.1 1692.
  #> 6 E06       3.8  18.9 2176. 340.   63.8 1794.
  ```
