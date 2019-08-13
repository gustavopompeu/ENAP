setwd("D:/Gu/ENAP/Dados")

## Alessandro (ANEEL)
# Tarifas Residenciais de Energia Elétrica
tarifa <- read.csv("TarifaFornecimentoResidencial.csv")
summary(tarifa)
plot(tarifa$VlrTEConvencional, tarifa$VlrTRFBrancaForaPonta)

## Alexandre (Ministério da Economia)
# Empenhos Realizados
empenho <- read.csv("siconv_empenho.csv", sep=";", encoding="UTF-8")
summary(empenho)

## Cecília (Secretaria de Políticas para as Mulheres)
# DATASUS - Homicídios: CIDs-10 (X85-Y09 e Y35-Y36), ou seja, óbitos causados por agressão mais intervenção legal. 
obitos <- read.csv("obitos.csv", sep=";", encoding="UTF-8")
summary(obitos)

## Érica (ANAC)
# Ocorrências Aeronáuticas na Aviação Civil Brasileira
oco <- read.csv("oco.csv", sep="~", encoding="UTF-8")
summary(oco)