x <- c(2,5,7)
x1 <- c(x,9)
x
x1

x[1] #first element of x
x[c(2,3)]

x[c(3,1)]

x1
c(x1,x)
x1
x

x1
x1[1] <- 0
x1
x1[c(1,2,3)] <- 0
x1

x1<- x1[c(2,3,4)]
x1
x1 <- x1[c(2,3)]

length(x1)

sum(x1)

x <- c(0, -5, 10)
x

names(x)
names(x) <- c("a","b","c")
x
names(x)
x[1]
x["a"]

typeof(x)

str(x)

x


1:10
10:1  
1.5 : 10.6
10.6 : 1.2

x[1:3]
x[3:1]

y1 <- "Hello World!"
typeof(y1)
y1 <-'Hello World!'
y1
y1 <- "Hello World!"


y1 <- "Hello World"

y2 <- c("Hello", "World")
length(y1)
length(y2)

colors<-c("red", "yellow", "blue")

colors

more.colors <- c(colors, "green", "black", "gray")

c(1:10, colors)

?paste

paste("A",1:10,".txt")
paste(colors,"flowers")

paste(colors, "flowers",sep="")
paste(colors, "flowers",sep="-")

paste(colors, "flowers", collapse="-")

?seq

seq(1,10,2)
seq(from=-10, to=30, by=1.5)
x2 <- seq(to=30, from=-10)
x2

seq(1,10, len=100)

seq()

?rep
rep(1:10,times=2)

a<- c(1,3,5,6)
rep(a, times=2)

rep(a, each=2)

length(a)
a
rep(a, times=1:4)

rep(a, times=3, each=2)

rep(a, len=20)

