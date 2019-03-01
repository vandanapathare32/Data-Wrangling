library("dplyr")
file<-read.csv("C:\\Users\\VANDANA\\Downloads\\Raw.csv",stringsAsFactors = FALSE)

file1<-file   #duplicate

colnames(file1)
file3<-file[,c(1,2,10:39)]   #subsetting
file4<-file3[,-1]      #removing the timestamp
#sorted file is file4
colnames(file4)
rm(file3)

library("openxlsx")

ref<-read.xlsx("C:\\Users\\VANDANA\\Downloads\\DataAnalytic_Intern_Jan 2019\\DataAnalytic_Intern_Jan 2019\\R test\\Refrence file.xlsx",sheet="EVA")
colnames(ref)
ref1<-ref[,c(5,6,7,8)]
ref1[1,2]
ref1[20,1]<-ref1[19,1]     #assigning the values for each blank row.
ref1<-ref1[,c(1,3,4)]
write.csv(ref1,"ref.csv")
write.csv(file4,"file.csv")
################################################################


    
for (i in 1:21) #ref1
{
  colnum<-(grep(ref1[i,1], colnames(file4) )) # fetched  matching col number
  colnum<-na.omit(colnum)
 
  for (j in 1:21) #ref1
  {
    for(k in 1:14)
    {
    match<-grepl(ref1[j,2],file4[k,colnum])
    if(match==TRUE)
    {
      file4[k,colnum]<-ref1[j,3]
    }
    }
  
  }
}

write.csv(file4,"evadone.csv")
getwd()

CEA<-read.xlsx("C:\\Users\\VANDANA\\Downloads\\DataAnalytic_Intern_Jan 2019\\DataAnalytic_Intern_Jan 2019\\R test\\Refrence file.xlsx",sheet="CEA")
MOS<-read.xlsx("C:\\Users\\VANDANA\\Downloads\\DataAnalytic_Intern_Jan 2019\\DataAnalytic_Intern_Jan 2019\\R test\\Refrence file.xlsx",sheet="MOS")
GEK<-read.xlsx("C:\\Users\\VANDANA\\Downloads\\DataAnalytic_Intern_Jan 2019\\DataAnalytic_Intern_Jan 2019\\R test\\Refrence file.xlsx",sheet="GEK")

CEA<-CEA[,c(5,7,8)]
MOS<-MOS[,c(5,7,8)]
GEK<-GEK[,c(5,7,8)]
#repeat the steps from line 19 for each of the file.(key:replace ref1 by CEA or MOS
#based on what you choose to work on.)