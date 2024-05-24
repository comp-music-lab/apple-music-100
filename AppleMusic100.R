library(ggplot2)

d<-read.csv("AppleMusic100.csv")
dx<-density(d$Year)

#plot(dx, lwd = 2, col = "red",
#     main = "Density",xlim=c(1955,2025),xlab="Release Year", ylab="Frequency",yaxt="n")
#rug(jitter(d$Year))
ggplot(d, aes(x=Year))+
  geom_density(color="red", fill="red")+ xlab("Release Year")+ ylab("Frequency")

counts <- table(d$Genre)

#Genre
counts<-as.data.frame(table(d$Genre))
ggplot(counts, aes(x=Var1, y=Freq)) + 
  geom_bar(stat = "identity")

x <- ggplot(counts, aes(x = reorder(Var1, -Freq), y = Freq)) 

x <- x + geom_bar(stat="identity", color='red',fill='red') 

x <- x + theme(axis.text.x=element_text(angle=45, hjust=0.9)) + xlab("Genre") + ylab("Count")
x

#Gender
counts<-as.data.frame(table(d$Gender))
ggplot(counts, aes(x=Var1, y=Freq)) + 
  geom_bar(stat = "identity")

x <- ggplot(counts, aes(x = reorder(Var1, -Freq), y = Freq)) 

x <- x + geom_bar(stat="identity", color='red',fill='red') 

x <- x + theme(axis.text.x=element_text(angle=45, hjust=0.9)) + xlab("Gender") + ylab("Count") 
x

#Language
counts<-as.data.frame(table(d$Language))
ggplot(counts, aes(x=Var1, y=Freq)) + 
  geom_bar(stat = "identity")

x <- ggplot(counts, aes(x = reorder(Var1, -Freq), y = Freq)) 

x <- x + geom_bar(stat="identity", color='red',fill='red') 

x <- x + theme(axis.text.x=element_text(angle=45, hjust=0.9)) + xlab("Language") + ylab("Count") 
x