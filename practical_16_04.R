score<-c(1,2,1,5,3,4,4)
fscore<- factor(score)
fscore
score


fscore<- factor(score,levels=1:5)
fscore
fscore<- factor(score,
                levels=1:5, 
                labels = c("poor", "weak",
                           "good", "very good", 
                           "excellent"))
fscore

levels(fscore)

as.numeric(fscore)

f <- as.numeric(fscore)
f

x <- 0:6
x
class(x)
as.logical(x)

as.character(x)

y <- c("a","b","c")
as.numeric(y)

as.logical(y)

as.complex(y)


as.numeric()
as.character()
as.logical()
...

#Exercise
m <- matrix(1:12, nrow = 3, ncol=4)
m

m[2,4]
m[1,]
m[,2]
m[1:2,]
m[c(3,1),]

m[1,]
sum(m[1,])

m[,4]
ncol(m)
m[,ncol(m)] #last column

m[nrow(m),] #last row


mean(m[,ncol(m)])

??"column sum"

colMeans(m)[4]
colMeans(m)[ncol(m)]


x<-c(34,45,23,65,3)
m<-matrix(1:10,nrow=2)
y <- LETTERS[1:10]

mylist <- list(x1=x, x2=m, x3=y)
mylist


mylist[1]

mean(mylist[1])

mylist[[1]]

mean(mylist[[1]])

mylist$x1

length(mylist)
str(mylist)

mylist

mtcars

x <- c("aaa","bbb","ccc", "ddd")
y <- c(21,20,22,19)
z <- c(93.4,78.5,88.6,91.9)

df <- data.frame(x1=x, x2=y, x3=z)

df
class(df)
typeof(df)
dim(df)
names(df)
row.names(df)
ncol(df)
nrow(df)
length(df)

df[1,2] #first row and second column
df[1,]
class(df[1,])

df[,2] #second column

df[,c(1,3)]

df[[1]]
df[[2]]

df$x1

df

df$x3>=90

df[df$x3>=90,]

subset(df, x3>=90)

df2 <- df[df$x3>=90,]
df3 <- subset(df, x3>=90)
df2
df3

identical(df2,df3)

NA

x <- c(1,2,NA,10,3)
x

is.na(x)


NaN
Inf
sqrt(-1)

1/0
-1/0


x
x==NA #wrong!

is.na(x)

anyNA(x)

mean(x)

is.na(x)
!is.na(x)

x[!is.na(x)]
mean(x[!is.na(x)])

x

#Exercise
airquality
str(airquality)

anyNA(airquality)
is.na(airquality$Ozone)

sum(is.na(airquality$Ozone)) #total numbers of NA values

is.na(airquality$Solar.R)
sum(is.na(airquality$Solar.R)) #total numbers of NA values

is.na(airquality$Ozone)
!is.na(airquality$Ozone)
airquality$Ozone[!is.na(airquality$Ozone)]


mean(airquality$Ozone[!is.na(airquality$Ozone)])


anyNA(airquality)

complete.cases(airquality)

airquality[1:10,]

df3 <- airquality[complete.cases(airquality),]
anyNA(df3)

# data import / export

getwd()
setwd("c:/R/MATH485")
setwd("c:\\R\\MATH485")

x
write(x, file="x.txt")

write.table(x, file="x.txt")

airquality

# "\t" :tab
#delim2
write.table(airquality, file="airdata1.txt", sep="\t",
            dec=",", row.names = F, col.names = T)

#delim
write.table(airquality, file="airdata1.txt", sep="\t",
            dec=".", row.names = F, col.names = T)

#csv : comma seperated value
write.table(airquality, file="airdata1.txt", sep=",",
            dec=".", row.names = F, col.names = T)


#csv2 : comma seperated value2
write.table(airquality, file="airdata1.txt", sep=";",
            dec=",", row.names = F, col.names = T)



write.table(airquality, file="airdata1.txt", sep="\t",
            dec=",", row.names = F, col.names = T)

#read.table

air1 <- read.table(file="airdata1.txt", header=T,
           sep="\t", dec=",")
air1
str(air1)


read.csv(file, header=T, sep = ",", dec=".", ...)

read.csv2(file, header=T, sep=";", dec=",", ...)

read.delim (file, header=T, sep = "\t", dec=".",...)

read.delim2(file, header=T, sep = "\t", dec=",",...)

#example:

#csv file
write.table(airquality, file="airdata2.txt", sep=",",
            dec=".", row.names = F, col.names = T)

df4 <- read.csv(file="airdata2.txt", header = T)
str(df4)


#Select data and copy to clipboard first
df5 <- read.csv(file="clipboard", header = T)
str(df5)

df6 <- read.csv(file=file.choose(), header = T)
str(df6)
