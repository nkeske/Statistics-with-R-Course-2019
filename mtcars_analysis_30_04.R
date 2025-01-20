x <- c(34,23,5,7,4,22,12)
?mean

mean(x)

mtcars

str(mtcars)
mean(mtcars)

mean(mtcars$mpg)

?quantile()
mtcars$mpg

quantile(mtcars$mpg)

quantile(mtcars$mpg, probs=c(0.25,0.5,0.75))

quantile(mtcars$mpg, probs=c(0.10,0.90))

quantile(mtcars$mpg, probs=c(0.05,0.95))

summary(mtcars$mpg)

summary(mtcars)

summary(iris)

#Exercise-1
mtcars
mtcars$mpg

min(mtcars$mpg)
max(mtcars$mpg)
range(mtcars$mpg)
range(mtcars$mpg)[2]-range(mtcars$mpg)[1]

max(mtcars$mpg)-min(mtcars$mpg)
IQR(mtcars$mpg)
quantile(mtcars$mpg, probs=0.75)-quantile(mtcars$mpg, probs=0.25)

var(mtcars$mpg)
sqrt(var(mtcars$mpg))
sd(mtcars$mpg)

#cv
sd(mtcars$mpg)/mean(mtcars$mpg)*100

#interval
xbar <- mean(mtcars$mpg)
s <- sd(mtcars$mpg)
int1 <- c(xbar-s, xbar+s)
int1

#Approximately what percent of data lies between one standard deviations?
# ???

#example
mtcars$mpg
mean(mtcars$mpg)

mtcars$cyl

mtcars[mtcars$cyl==4,1]

mean(mtcars[mtcars$cyl==4,1])
sd(mtcars[mtcars$cyl==4,1])

mean(mtcars[mtcars$cyl==6,1])
sd(mtcars[mtcars$cyl==6,1])

mean(mtcars[mtcars$cyl==8,1])
sd(mtcars[mtcars$cyl==8,1])


#tapply

#tapply(X,index, mean)

tapply(mtcars$mpg, mtcars$cyl, mean)

tapply(mtcars$mpg, mtcars$cyl, sd)

Exercise-2
# Import data

# Calculate the mean, median and mode of this data.

# Calculate the standard deviation of this data.

# Compute the following intervals;

# Approximately what percent of data lies between two standard deviations?

#Measures of Relationships Between Variables
mtcars$mpg
mtcars$hp

cov(mtcars$mpg,mtcars$hp)

cor(mtcars$mpg,mtcars$hp)


chickwts

str(chickwts)

table(chickwts$feed)

table(chickwts$weight)

table(chickwts$feed)

prop.table(chickwts$feed)

prop.table(table(chickwts$feed))

table(mtcars$gear,mtcars$cyl)
