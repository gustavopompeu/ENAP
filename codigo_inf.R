setwd("D:/Gu/ENAP/Dados")

## Alexandre (INEP)
enem <- read.csv2("MICRODADOS_ENEM_ESCOLA.csv")

## Samuel (SNS/MDR)
agua_esgoto <- read.csv("Agua_Esgoto.csv")
str(agua_esgoto)

## José Carlos (ME/SECINT)
## Renato (ME/SECEX)
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

