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
<-c(TRUE,FALSE)
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

