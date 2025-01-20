LETTERS
letters
pi
month.abb
month.name

3^(-2:10)
(-5:5)^3
(1:7)^(7:1)

tmp<-c(3,5,8)
rep(tmp, times=10)
rep(tmp, len=31)
rep(tmp, times=c(10,20,30))

exp(1)
x <- seq(2,5,by=0.1)
exp(x)*cos(x)

x <- 0.1^seq(3,36,by=3)
y <- 0.2^seq(1,34,by=3)
x*y

#(b) ???


paste("A", 1:10, sep = "")
paste(letters, 1:26, sep="")
paste("Today is", date())

Sys.Date()
Sys.time()
date()

#exercise-5 ???

library()
library(readr)
getOption("defaultPackages")

install.packages("TeachingDemos")
library(TeachingDemos)

?TeachingDemos

installed.packages()
installed.packages("WRS2")

library(WRS2)
?onestep

sessionInfo()

a <- c(TRUE, FALSE)
a <- c(T,F,T,F)
a

x <- c(3,5,7)
y <- c(5,6,3)
x > y

a<-c(T, F, F, T)

b<- c(30, 20, 15, 40)

b[1]
b[c(1,2)]

b[a]

a
b
b[a]


b<-c(23, 22, 19, 16, 25, 30)

b>21

b[b>21]

b
a <- c(T,F)
b[a]


b
b[-1]
b[-c(1,2)]
b[-c(1,length(b))]
b[-c(1,3,2)]

