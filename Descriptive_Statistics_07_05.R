# Calculate the following descriptive statistics for mpg
# data in mtcars.
mtcars
# – Minimum value
min(mtcars$mpg)
# – Maximum value
max(mtcars$mpg)
# – Range
max(mtcars$mpg)-min(mtcars$mpg)

range(mtcars$mpg)
# – IQR
IQR(mtcars$mpg)
# – Standard deviation
sd(mtcars$mpg)
# – Coefficient of variation
sd(mtcars$mpg)/mean(mtcars$mpg)*100
# - The interval xbar-s, xbar+s
xbar <- mean(mtcars$mpg)
s <- sd(mtcars$mpg)
int <- c(xbar-s, xbar+s)
int
# - Approximately what percent of data lies between one
# standard deviations?
mtcars$mpg
int
mtcars$mpg>int[1]
mtcars$mpg<int[2]
mtcars$mpg>int[1] & mtcars$mpg<int[2]
sum(mtcars$mpg>int[1] & mtcars$mpg<int[2])
n <- length(mtcars$mpg)
sum(mtcars$mpg>int[1] & mtcars$mpg<int[2])/n*100


#Exercise
df2 <- read.table(file="c:/R/MATH485/age.txt", header=F)
df2

mean(df2$V1)
sd(df2$V1)
median(df2$V1)

#mode?
table(df2$V1)

max(table(df2$V1))


freq <- table(df2$V1)
freq==max(freq)

freq[freq==max(freq)]

names(freq[freq==max(freq)])

as.numeric(names(freq[freq==max(freq)]))

#the mode, the most common value in df2$V1
as.numeric(names(table(df2$V1)[table(df2$V1)==max(table(df2$V1))]))

xbar<-mean(df2$V1)
s <- sd(df2$V1)

int1 <- c(xbar-s, xbar+s)
int1 <- xbar + c(-s, s)
int1

int2 <- xbar + c(-s*2, s*2)
int2
int2 <- c(xbar-2*s, xbar+2*s)
int2


int3 <- xbar + c(-s*3, s*3)
int3
int3 <- c(xbar-3*s, xbar+3*s)
int3

df2$V1>=int2[1]
df2$V1<=int2[2]

df2$V1>=int2[1] & df2$V1<=int2[2]

sum(df2$V1>=int2[1] & df2$V1<=int2[2])
length(df2$V1)

sum(df2$V1>=int2[1] & df2$V1<=int2[2])/ length(df2$V1) * 100



#Example-1: Construct a bar chart for the categorical
# variable cyl in data frame mtcars

mtcars$cyl

barplot(mtcars$cyl)

barplot(table(mtcars$cyl))


counts<-table(mtcars$cyl)
barplot(counts,
        main="Simple bar plot for Number of cylinders",
        xlab="Number of cylinders",
        ylab="Frequency",
        col = c("blue","yellow","tomato"))


barplot(counts,
        main="Simple bar plot for Number of cylinders",
        ylab="Number of cylinders",
        xlab="Frequency",
        col = c("blue","yellow","tomato"),
        horiz=T)


#stacked bar chart
counts<-table(mtcars$cyl, mtcars$gear)
counts
barplot(counts,
        main="Stacked bar plot for Number of cylinders and gear",
        xlab="gear",
        ylab="Frequency")


barplot(counts,
        main="Stacked bar plot for Number of cylinders and gear",
        xlab="gear",
        ylab="Frequency",
        col=c("blue","yellow","tomato"))


barplot(counts,
        main="Stacked bar plot for Number of cylinders and gear",
        xlab="gear",
        ylab="Frequency",
        col=c("blue","yellow","tomato"),
        legend=row.names(counts))

barplot(counts,
        main="Stacked bar plot for Number of cylinders and gear",
        xlab="gear",
        ylab="Frequency",
        col=c("blue","yellow","tomato"),
        legend=c("4","6","8"))


#Clustered bar chart
counts<-table(mtcars$cyl, mtcars$gear)
barplot(counts,
        main="Clustered bar plot for Number of cylinders and gear",
        xlab="gear",
        ylab="Frequency",
        col=c("blue","yellow","tomato"),
        legend=row.names(counts),
        beside = T)

barplot(counts,
        main="Clustered bar plot for Number of cylinders and gear",
        xlab="gear", ylab="Frequency",
        col = c("blue","yellow","tomato"),
        legend=paste(rownames(counts),"cyl"),
        beside = T)

#pie chart
count <- table(mtcars$cyl)

pie(count)

pie(count, labels=paste(names(count),"cyl"),
    main="Simple pie chart for number of cylinders",
    col=c("blue","yellow","tomato"))

#Add percentages to pie chart

counts<-table(mtcars$cyl)
counts

sum(count)
counts/sum(count)*100
pct <- round(counts/sum(count)*100,2)

lab <- paste(names(count), "-cyl ", pct,"%", sep="")

lab
pie(counts, labels=lab,
    main="Pie Chart with Percentages",
    col=c("blue","yellow","tomato"))


#par
par()
par(col="red")
plot(mtcars$mpg)

#dev.off
dev.off()
plot(mtcars$mpg)


#Example
counts<-table(mtcars$cyl)
counts
par(mfrow=c(1,2))
pie(counts, labels=names(counts),
    main="Simple pie chart for number of cylinders",
    col=c("blue","yellow","tomato"))

barplot(counts,
        main="Simple bar chart for number of cylinders",
        col=c("blue","yellow","tomato"))


counts<-table(mtcars$cyl)
par(mfrow=c(2,2))
barplot(counts,
        main="Simple bar chart for number of cylinders",
        col=c("blue","yellow","tomato"))
barplot(counts,
        main="Simple bar chart for number of cylinders",
        col=c("blue","yellow","tomato"),horiz=T)
pie(counts, labels=names(counts),
    main="Simple pie chart for number of cylinders",
    col=c("blue","yellow","tomato"))
pie(counts, labels=names(counts),
    main="Simple pie chart for number of cylinders",
    col=c("tan","gold","yellowgreen"))


counts<-table(mtcars$cyl)
par(mfcol=c(2,2))
barplot(counts,
        main="Simple bar chart for number of cylinders",
        col=c("blue","yellow","tomato"))
barplot(counts,
        main="Simple bar chart for number of cylinders",
        col=c("blue","yellow","tomato"),horiz=T)
pie(counts, labels=names(counts),
    main="Simple pie chart for number of cylinders",
    col=c("blue","yellow","tomato"))
pie(counts, labels=names(counts),
    main="Simple pie chart for number of cylinders",
    col=c("tan","gold","yellowgreen"))


par(mfrow=c(1,1), cex=1.25)
pie(counts, labels=names(counts),
    main="Simple pie chart for number of cylinders",
    col=c("tan","gold","yellowgreen"))

par(mfrow=c(1,1), cex=1.25, cex.main=1.5)
pie(counts, labels=names(counts),
    main="Simple pie chart for number of cylinders",
    col=c("tan","gold","yellowgreen"))

?par
par(bg="gold")
pie(counts, labels=names(counts),
    main="Simple pie chart for number of cylinders",
    col=c("tan","gold","yellowgreen"))


#hist
?hist

hist(mtcars$hp,col = "tomato")
hist(mtcars$hp,col = c("tomato","green"))

hist(mtcars$hp,col = rainbow(6))

rainbow(6)

rainbow(12)
colors()
terrain.colors(12)


iris$Sepal.Width
hist(iris$Sepal.Width)

hist(iris$Sepal.Width, xlim=c(1,5))
hist(iris$Sepal.Width, xlim=c(1,5), ylim=c(0,40))
hist(iris$Sepal.Width, xlim=c(1,5), ylim=c(0,40), col="gold")

iris
str(iris)
iris$Species=="versicolor"
x <- iris$Sepal.Width[iris$Species=="versicolor"]
hist(x)

hist(x, col="yellowgreen",
     main="Histogram of Sepal Width for versicolor",
     xlab="Sepal.Width")


y <- subset(iris$Sepal.Width,iris$Species=="versicolor")
hist(y, col="yellowgreen",
     main="Histogram of Sepal Width for versicolor",
     xlab="Sepal.Width")

install.packages("dplyr")
library(dplyr)
df1 <- filter(iris, Species=="versicolor")
spwd <- select(df1,Sepal.Width)
hist(spwd$Sepal.Width, col="yellowgreen",
     main="Histogram of Sepal Width for versicolor",
     xlab="Sepal.Width")


#boxplot

boxplot(mtcars$mpg)
boxplot(mtcars$mpg, horizontal=T)

boxplot(mtcars$mpg ~ mtcars$cyl)

boxplot(mtcars$mpg~mtcars$cyl,
        main="Milage by cyl",
        col=c("red", "blue", "gold"),
        xlab="Number of Cylinders",
        ylab=c("mpg"))



boxplot(iris$Sepal.Width~iris$Species)

boxplot(iris$Sepal.Width~iris$Species, 
        main="Sepal width by species",
        xlab="Sepal Width",
        ylab="Species",
        horizontal = T,
        col=c("red","blue","yellow"))


par(mfrow=c(1,2))
boxplot(iris$Sepal.Width)
hist(iris$Sepal.Width)


#scatter plot
dev.off()
plot(mtcars$mpg, mtcars$hp, # x,y
     xlab="Miles Per Gallon",
     ylab="HP",
     main="Plot of mpg vs hp")


plot(mtcars$hp ~ mtcars$mpg,  #y ~ x
     xlab="Miles Per Gallon",
     ylab="HP",
     main="Plot of mpg vs hp")

# plot of a funtion

x <- seq(-5, 5, by=0.1)
x
y <- x^2
plot(x,y)

plot(x,y, type="p")
plot(x,y, type="l") #line

plot(x,y,type="b")
plot(x,y,type="o")

# ln(x)

log(10)
log(10, base=exp(1))
exp(1)

log(10,base=10)
log10(10)

x <- seq(1,10,by=0.1)
y <- log(x)
plot(x,y)

x <- seq(1,10,by=0.1)
y <- log(x, base=10)
plot(x,y)
