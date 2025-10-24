
#loading in packages
library(tidyverse)
library(ggplot2)

#bringing data into tibbles 
chicago <- read_csv("Data for Chicago - Sheet1 (2).csv",show_col_types = FALSE)
gotham <- read_csv("Data for Gotham - Sheet1 (1).csv",show_col_types = FALSE)
orlando <- read_csv("Data for Orlando - Sheet1 (1).csv", show_col_types = FALSE)
barbra <- subset(orlando, orlando$Player == "Barbra Banda")


#RQ1: How old are professional women soccer players?
#graph for ages 
ggplot(chicago) + geom_bar(data = chicago, aes(x = chicago$Age)) + geom_bar(data = gotham, aes(x = gotham$Age)) + geom_bar(data = orlando, aes( x = orlando$Age)) + labs( title = "Ages of Soccer Players", x = "Ages") + theme_classic()


## RQ2: How is minutes played related to the number of goals scored for NWSL players? 
#graph for minutes to num of goals 
ggplot(chicago) + geom_point(data = chicago, aes(x = chicago$Min, y = chicago$Gls...9)) + labs(title = "Minutes Played VS Number of Goals Scored", x = "minutes played", y = "goals scored") + geom_point(data = gotham, aes(x = gotham$Min, y = gotham$Gls...9)) + geom_point(data = orlando, aes(x = orlando$Min, y = orlando$Gls...9)) + geom_point(data = barbra, aes(x = Min, y = Gls...9, col =  "pink"), show.legend = FALSE) + geom_label(aes(x = 1540, y = 8.75, label = "Barbra Banda"))
#I had to ask Sage AI for help to hide the legend it was creating.