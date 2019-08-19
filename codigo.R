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

## José Carlos (Ministério da Economia) e Carlos Antonio (Secretaria de comércio exterior)
# Base de dados do Comex Stat
#Base de dados detalhada por NCM: Arquivos CSV com separador ponto e vírgula (;) detalhado por ano, mês, 
#código NCM, código da unidade estatística, código de país de destino/origem do produto, 
#código da UF de origem/destino do produto, código da via de transporte, código da URF de embarque/desembarque, 
#quantidade estatística, quilograma líquido, valor dólar FOB (US$).
ncm <- read.table("EXP_2019.txt", sep=";", header=T)
summary(ncm)

#Base de dados detalhada por Município da empresa exportadora/importadora e Posição do Sistema Harmonizado (SH4): 
#Arquivos CSV com separador ponto e vírgula (;) detalhado por ano, mês, código SH4, 
#código de país de destino/origem do produto, código da UF do domicíilo fiscal da empresa, 
#código do município domicílio fiscal da empresa exportadora/importadora, quilograma líquido, valor dólar FOB (US$).
imp <- read.table("IMP_2019_MUN.txt", sep=";", header=T)
summary(imp)


## Felipe (CAPES)
capes <- read.csv2("dados.csv")
str(capes)
summary(capes)


## Nara (IBAMA)
#Relação de Autorizações de Exploração Florestal (Autex) cadastradas no sistema DOF, contendo dados sobre produtos, 
#espécies, volumes autorizados e volumes remanescentes, entre outros. As séries de dados iniciam-se em 2007 e estão 
#separadas por ano de emissão do DOF e por unidade federativa (UF) de origem.
DOF <- read.csv2("2007.csv", encoding = "UTF-8")
summary(DOF)
