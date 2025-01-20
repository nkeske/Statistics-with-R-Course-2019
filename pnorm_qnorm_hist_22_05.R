x <- rnorm(1000, mean=8, sd=5)
x <- sort(x)
fx <- dnorm(x, mean=8, sd=5)
plot(x,fx, col="red", ylim=c(0,0.15),
     main="Two normal distributions",
    xlab="x", ylab="pdf", type="l",
    lwd=2)

y <- rnorm(1000, 9, 3)
y <- sort(y)
fy <- dnorm(y, 9, 3)
lines(y,fy, col="navy", lty=2, lwd=2)

legend("topright", 
       legend=c("X~N(8,25)","Y~N(9,9)"),
       col=c("red","navy"), lty=c(1,2),
       lwd=c(2,2))
abline(v=c(8,9),col=c("red","navy"),
       lwd=2)

#Example
x1 <- rnorm(20, mean=100, sd=10)
x2 <- rnorm(20, mean=100, sd=10)

df1 <- data.frame(a=x1,b=x2)
df1

#Example
par(mfrow=c(3,4))

m <- 5
s <- 2
x1 <- rnorm(10,m,s)
x2 <- rnorm(10,m,s)
x3<- rnorm(10,m,s)
x4 <- rnorm(10,m,s)

hist(x1)
hist(x2)
hist(x3)
hist(x4)


x1 <- rnorm(100,m,s)
x2 <- rnorm(100,m,s)
x3<- rnorm(100,m,s)
x4 <- rnorm(100,m,s)

hist(x1)
hist(x2)
hist(x3)
hist(x4)

x1 <- rnorm(1000,m,s)
x2 <- rnorm(1000,m,s)
x3<- rnorm(1000,m,s)
x4 <- rnorm(1000,m,s)

hist(x1)
hist(x2)
hist(x3)
hist(x4)

sample(1:100, size=15, rep=F)
sample(1:100, size=101, rep=F)

sample(1:100, size=1000, rep=T)


sample(1:6, 10, rep=T)

sample(c("H","T"),size=10, rep=T)

sample(1:49, size=6, rep=T)


sample(1:100,size=50, rep=T)

500*50

x <- sample(1:100, size=50*500, rep=T)
m <- matrix(x,nrow=50, ncol=500)

write.table(m, file="m1.txt",
            sep="\t", dec=",",
            row.names=F, col.names=F)

#2nd way
m <- matrix(ncol=500, nrow=50)

for (i in 1:500){
  x<-sample(1:100, size=50, rep=T)
  m[,i] <- x
}
str(m)
write.table(m, file="m1.txt",
            sep="\t", dec=",",
            row.names=F, col.names=F)

#Exercises
m <- 10
s <- 5
# P(X<mu+sigma)
pnorm(m+s, m, s)

#P(X<mu-sigma)
pnorm(m-s, m, s)

pnorm(m+s, m, s)-pnorm(m-s, m, s)

pnorm(m+2*s, m, s)-pnorm(m-2*s, m, s)

pnorm(m+3*s, m, s)-pnorm(m-3*s, m, s)


# Z~N(0,1)
#P(0<Z<1.77)
pnorm(1.77)-pnorm(0)


#P(Z>0.29)
1-pnorm(0.29)

#P(Z<1.39)
pnorm(1.39)

#P(1.05<Z<1.78)
#P(Z<1.78)-P(Z<1.05)
pnorm(1.78)-pnorm(1.05)

#P(Z<0.24)-P(Z<-1.12)
pnorm(0.24)-pnorm(-1.12)


#P(0<Z<zc)=0.45
qnorm(0.5+0.45, mean=0, sd=1)
qnorm(0.5+0.45)

qnorm(0.5-0.41)

qnorm(0.01)

qnorm(1-0.025)

qnorm(0.95)

qnorm(1-0.9)


#13
qnorm(0.05/2)
qnorm(1-0.025)

qnorm(0.10/2)
qnorm(1-0.05)


qnorm(0.01/2)
qnorm(1-0.005)

#14
qnorm(1-0.10, 200, 20)

#15
pnorm(1, 1.64, 0.24)
500*pnorm(1, 1.64, 0.24)

round(500*pnorm(1, 1.64, 0.24))

#16
1-pnorm(1200,949,100)

qnorm(0.10, 949, 100)

#17


#18
x <- c(2,11,22,25,26,22,25,27,32,40)
z <- (x-mean(x))/sd(x)
z

dev.off()
boxplot(x)
y <- boxplot(x)
y

#19
x <- rnorm(1000, 10, 5)
x <- sort(x)
fx <- dnorm(x, 10, 5)

hist(x)

lines(x,fx, col="navy",type="l",lwd=2)

#we need a density histogram
hist(x, prob=T, ylim=c(0,0.1))

lines(x,fx, col="navy",type="l",lwd=2)

#20
#Exercise