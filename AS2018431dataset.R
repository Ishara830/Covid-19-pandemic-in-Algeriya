library(devtools)
devtools::install_github("thiyangt/sta3262")
library(sta3262)
get_individual_project_country("AS2018431")
# i got Algeria.
install.packages("coronavirus")
library(coronavirus)
data(coronavirus)
head(coronavirus)
tail(coronavirus)
?coronavirus
unique(coronavirus$country)

library(tidyverse)
library(magrittr)

algeria_corona <- coronavirus %>% filter(country == "Algeria")

head(algeria_corona)
tail(algeria_corona)

# recovery cases
recovery_algeria_corona <- algeria_corona %>% filter(type=="recovory")
head(recovery_algeria_corona)
tail(recovery_algeria_corona)
ggplot(recovery_algeria_corona, aes(x=date, y=cases)) + geom_line() + ggtitle("Algeria : Daily Covid-19 Recoveries")

# confirmed cases
confirmed_algeria_corona <- algeria_corona %>% filter(type=="confirmed")
head(confirmed_algeria_corona)
tail(confirmed_algeria_corona)
ggplot(confirmed_algeria_corona, aes(x=date, y=cases)) + geom_line() + ggtitle("Algeria : Daily Covid-19 Recoveries")

# death cases
death_algeria_corona <- algeria_corona %>% filter(type=="confirmed")
head(death_algeria_corona)
tail(death_algeria_corona)
ggplot(death_algeria_corona, aes(x=date, y=cases)) + geom_line() + ggtitle("Algeria : Daily Covid-19 Recoveries")






