##ENTERING INPUTS
x<- 2
x
msg<- "Hi"
y<- 1:10
y
z<- 1.5
z

##VECTORS

x <-c(0.7,0.8)
x
x <-c(TRUE,FALSE)
x
x<-c(T,F)
x
x<-c("a","b","c")
x
x<- 1:5
x
x<-c(1+2i,2+3i)
x
x<-vector("numeric", length = 4)
x
x<-c(1.5,"d")
x
x<-c("a",TRUE)
x

##EXPLICIT COERCION
x<- 0:5
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

x<-c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)

x<-list(1,"a", TRUE, 1+5i)
x

##MATRICES

m<- matrix(nrow = 2,ncol = 3)
m
dim(m)
attributes(m)

m<- matrix(1:6,nrow = 2,ncol = 3)
m

m<- 1:10
m

dim(m)<-c(2,5)
m

x<- 1:4
y<- 10:13
cbind(x,y)
rbind(x,y)


##Factors
x<- factor(c("Shikai","Bankai","Shikai","Bankai","Shikai","Bankai","Shikai"))
x
table(x)
unclass(x)

x<- factor(c("Shikai","Bankai","Shikai","Bankai","Shikai","Bankai","Shikai"), levels = c("Shikai","Bankai"))
x

##MISSING VALUES

x<-c(1,2,NA,10,3)
is.na(x)

is.nan(x)

x<-c(1,2,NaN, NA, 4)
is.na(x)

is.nan(x)

##DATAFRAMES
x<- data.frame(foo = 1:4, bar= c(T,T,F,F))
x

nrow[x]

ncol[x]


##NAMES
x<- 1:3
names(x)

names(x) <- c("foo","bar","roof")
x

names(x)

x<- list(a=1,b=2,c=3)
x

m<- matrix(1:4,nrow=2,ncol=2)
dimnames(m) <- list (c("a", "b"), c("c","d"))
m

##DPUTTING

y<- data.frame(a=1,b="a")
dput(y)

dput(y, file = "y.R")
new.y <- dget("y.R")
new.y

##DUMPING 

x<- "foo"
y <- data.frame(a=1, b="a")
rm(x,y)
source("data.R")
y

x

##SUBSETTING

x<- c("a","b","c","d","a")
x[1]

x[2]

x[1:4]

x[x>"a"]

u <- x > "a"
u

x[u]

##SUBSETTING Lists

x<-list(foo=1:4, bar=0.6)
x[1]

x[[1]]

x$bar

x[["bar"]]

x["bar"]

x<- list(foo=1:4, bar=0.6, baz="hello")
x[c(1,3)]

x<- list(a = list(10,12,14), b= c(3.14,2.81))
x[[c(1,3)]]

x[[1]][[3]]

x[[c(2,1)]]

##SUBSETTING A MATRIX
x <- matrix(1:6,2,3)
x[1,2]

x[2,1]

x[1,]

x[, 2]

x<-matrix(1:6,2,3)
x[1,2]

x[1,2,drop = FALSE]

x<-matrix(1:6,2,3)
x[1, ]
x[1, , drop = FALSE]

##Subsetting with names(Partial Matching)
x<-list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]

##Removing NA Values
x<-c(1,2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x<-c(1,2, NA, 4, NA, 5)
y<-c("a","b", NA, "d", NA, "f")
good <- complete.cases(x,y)
good
x[good]
y[good]

airquality[1:6, ]
good <- complete.cases(airquality)

airquality[good, ][1:6, ]

##Vectorized Operations
x<- 1:4; y<- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y

x<-matrix(1:4, 2, 2) ; y <- matrix(rep(10,4), 2, 2)
x * y
x / y
x %*% y
