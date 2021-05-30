days <- c('mon','tue','wed','thu','fri')
temp <- c(20,21,20,22,21)
rain <- c(T,T,F,F,T)
df <- data.frame(days,temp,rain)

#---example 1------
Age <-  c(22,23,25)
Weight <- c(150,125,165)
Sex <- c('M', 'M', 'F')
Name <- c('Sam','Frank','Amy')
dftest1 <- data.frame(row.names = Name, Age,Weight,Sex)
print(dftest1)
#-----Eample 2-----
print(is.data.frame(mtcars))
#--------example 3------
mat <- matrix(1:25,byrow=TRUE,ncol=5)
dftest2 = as.data.frame(mat)
print(dftest2)
#-----example 4------
dftest3 = mtcars
print(head(dftest3,3))
print(mean(dftest3$mpg))
print(dftest3[(dftest3$mpg>20) & (dftest3$cyl == 6),])
print(subset(dftest3,cyl==6))
#------example 5----
print(dftest3[,c('am','gear','carb')])
dftest3$performance <- dftest3$hp/dftest3$wt
print(head(dftest3))
dftest3$performance <- round(dftest3$performance,digits=2)
print(head(dftest3))
#-------exampe 6-----

print(mean(dftest3[dftest3$hp>100 & dftest3$wt>2.5,]$mpg))
print(mean(subset(dftest3,hp>100 & wt>2.5)$mpg))
print(dftest3['Hornet Sportabout',]$mpg)

#------conditional exercises
#if elseif else
x<- 1
if(x==1){
  print('my data is correct')
}
x <-13
if(x%%2 == 0){
  print('even data')
}else{
  print('not even data')
}
print(is.logical(3))
x <- 'hello'
if(is.logical(x)){
  print('it is true')
}else{
  print('it is false')
}
x <- c(5,4,2)
if(x[1]>x[2]&x[1]>x[3]){
  print(x[1])
}else if(x[2]>x[1] & x[2]>x[3]){
  print(x[2])
}else{
  print(x[3])
}

x<- 0
while (x < 7){
  print(paste0('x is:', x))
if(x==5){
    print('hi x is 6')
break
  }
  x <- x+1
}
mat <- matrix(1:25,ncol =5)
for (row in 1:nrow(mat)){
  for(col in 1:ncol(mat)){
    print(paste('row is:', row,'cal is:', col,'element is:', mat[row,col]))
  }
}

sum_my_data <- function(input1, input2){
  result <- input1+input2
  return(result)
}
  
a <- sum_my_data(2,3)
print(a)
hello_you <- function(name = 'Jack'){
  print(paste('hello', name))
}

hello_you('Sam')
hello_you2 <- function(name='Jack'){
  return(paste('hello',name))
}
print(hello_you2('Sam'))

product <- function(num1,num2){
  return(num1*num2)
}

print(product(2,3))

test_int <- function(item1,item2){
  for (ele in item2){
    if (ele == item1){
      return(TRUE)
    }
  }
  return(FALSE)
}

print(test_int(1,c(3,1,2)))
num_count <-function(item){
  x <- 0
  for(e in item){
    x <- x+1
  }
  return(x)
}

print(num_count(c(1,2,3,4)))

prim_chack <- function(num){
  if (num == 2){
    return(TRUE)
  }
  for (x in 2:(num-1)){
    if(num%%x==0){
      print(x)
      return(FALSE)
    }
  }
  return(TRUE)
}

print(prim_chack(11))

v <- c(1,2,3,4)
addrand <- function(x){
  ran <- sample(1:100,1)
  return(x+ran)
}
print(addrand(3))
result <- lapply(v,addrand) #list of vector
print(result)
results <- sapply(v,addrand)
print(results)
v <- 1:5
timestwo <- function(x,n){
  return(x*2+n)
}
results <- sapply(v,timestwo,n=10)
print(v)
print(results)