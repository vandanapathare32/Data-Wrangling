install.packages("readr")
install.packages("tidyverse")
install.packages("tidyr")
install.packages("shiny")
install.packages("stringr")

install.packages("openxlsx")
library("dplyr")
x=c('vandana','pathare')
x[1]



library("openxlsx")
mydat<-read.csv("C:\\Users\\VANDANA\\Downloads\\Cric.csv")
mydat<-mydat[1:129,]

summary(is.na(mydat))
colnames(mydat)
which(is.na(mydat$`Variable Tag`))
names(mydat)[2]<-"captain1"
names(mydat)[1]<-"rowid"
names(mydat)[3]<-"wktkeeper1"
names(mydat)[4]<-"overseas1"
names(mydat)[7]<-"franchise"
names(mydat)[8]<-"playercost_usd"
names(mydat)[10]<-"innings_played_10"
names(mydat)[12]<-"runs_scored"
names(mydat)[13]<-"highest_score"
names(mydat)[14]<-"is_star_batsman"
names(mydat)[15]<-"is_batsman"
names(mydat)[16]<-"batting_avg"
names(mydat)[17]<-"balls-faced"
names(mydat)[18]<-"strike_rate"
names(mydat)[19]<-"runs_given"
names(mydat)[20]<-"50_runs_made"
names(mydat)[23]<-"catches_per_match"
names(mydat)[24]<-"catches_taken"
names(mydat)[25]<-"stumping_made"
names(mydat)[26]<-"26"
names(mydat)[27]<-"matches_played"
names(mydat)[28]<-"innings_played"
names(mydat)[29]<-"is_bowler"
names(mydat)[30]<-"balls_bowled"
names(mydat)[31]<-"runs_given"
names(mydat)[32]<-"is_star_bowler"
names(mydat)[33]<-"wkts_taken"
names(mydat)[34]<-"best_innings_bowling"
names(mydat)[35]<-"best_match_bowling"
names(mydat)[36]<-"bowling_avg"
names(mydat)[37]<-"bowling_econ"
names(mydat)[41]<-"10_wickets_hauls"


head(mydat)
write.xlsx(mydat,"C:\\Users\\VANDANA\\Downloads\\new.xls")
myd<-subset(mydat,select=c('highest_score'))
removeComma= function(myd) {gsub("*", "", myd, fixed = TRUE)} 

tabWithoutCommas = sapply(myd[,"highest_score"], removeComma) 
tabWithoutCommas<-as.data.frame(tabWithoutCommas)

mydat$highest_score<-tabWithoutCommas$tabWithoutCommas
write.xlsx(mydat,"C:\\Users\\VANDANA\\Downloads\\new.xls")

summary(is.na(mydat)) #finding the na rows
which(names(mydat) %in% 26) #searching columnnumber of name as 26
mydat<-mydat[,-c(26)]   #deleting the na column
which(is.na(mydat$balls_bowled))

removeblank= function(myd) {gsub("-", "0", myd, fixed = TRUE)} 
mydat2<-mydat[]   #made another copy of the dataframe in case of any error we can
#retrieve our dataframe ready at this point
mydat2<-data.frame(lapply(mydat2,removeblank)) #remember the syntax.we used lapply
#because it doesnt change the structure of data frame as dataframe is a fancy set of
#lists.
summary(is.null(mydat2))
which(is.na(mydat2$is_star_bowler))
mydat3<-mydat2[-c(129),]
#final cleaned data equals mydat3 :)
#didnt really know how to deal with catches per match column.Left as it is.
write.xlsx(mydat3,"C:\\Users\\VANDANA\\Downloads\\new.xls")
#csv doesnt read the dates well.dont forget to export as xlsx.
