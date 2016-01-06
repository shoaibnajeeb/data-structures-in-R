### Vectors
#The fundamental datatype, Homogeneous mode, Different types of vectors
#There are no scalars

#In R, a vector is a 1-dimensional group of ordered elements
v1 <- c(1,2,3) 
v1 #[1] 1 2 3

#A constant is a vector of length 1, whose values can be of the following
s1 <- 10
s1 #[1] 10
s1[1] #[1] 10
s1[2] <- 20
s1 #[1] 10 20

v1 <- c(1,2,3) #numeric vector
v2 <- c(TRUE, FALSE, TRUE) #logical vector
v3 <- c("one", "two", "three") #character vector

class(v1); class(v2); class(v3) #check type

#Named vectors
names(v1) <- v3
names(v1) #[1] "one"   "two"   "three"

#Priority relationship incase of types are mixed: character > numeric > logical
c(1, 2, "Four") #[1] "1"    "2"    "Four"
c(1, 0, FALSE) #[1] 1 0 0
c(TRUE, "One") #[1] "TRUE" "One" 

#Length of a vector
length(v3) #[1] 3

#Generating regular sequences
#Using ":" - increment of either +1 or -1
1:4 #[1] 1 2 3 4
10:15 #[1] 10 11 12 13 14 15

#Using the seq() - use increment values other than +1 or -1
seq(from = 0, to = 20, by = 5) #[1]  0  5 10 15 20
seq(from = 1, to = 25, length.out = 3) #[1]  1 13 25

#Use 'rep()' - replicate elements in a vector
rep(v3, times = 3) #[1] "one"   "two"   "three" "one"   "two"   "three" "one"   "two"   "three"
rep(v3, each = 2) #[1] "one"   "one"   "two"   "two"   "three" "three"

#Referencing elements in a vector
v4 <- 1:15
#Positive
v4[5] #[1] 5
v4[c(8,9,10)] #[1]  8  9 10
v4[c(1:5)] #[1] 1 2 3 4 5
#Negative
v4[-c(4:10)] #[1]  1  2  3 11 12 13 14 15

#Reassign values and concatenate/append vectors
v5 <- sample(c(1:100), 10)
v5 #[1]  46  42  16  30  75  50  22  17 100  31
v5[c(3:6)] <- -c(1:4)

v6 <- c(c(11, 22, 33), c(12, 23, 45)) #atomic property
v6 #1] 11 22 33 12 23 45

#Vector Arithmetics and commonly used functions
#The arithmetic operations on vectors are usually element-wise.
v7 = 1:5; v8 = 2:6
v7+5; v8^2
v7*v8
v7%*%v8 # '%*%' inter-product or matrix multiplication

#Commonly Used Arithmetic Functions
floor(3.123)
ceiling(3.123)
round(3.512)
9%/%4 # integer divide
9%%4 # remainder of integer divide
4^2 # power function
log(4)
exp(2)

#Logical Operations  
pi>3.14
!(pi>3.14) # NOT 
10/2 == 5 # check whether equal
10/2 != 5 # check whether different
pi>3.14 & pi<3.15 # AND operation, TRUE iff both conditions are TRUE
pi>3.15 | pi<3.14 # OR operation, FALSE iff both conditions are FALSE

# Logical operations on vectors are still element-wise.
#Consider two vectors of 5 random standard normal obs.
set.seed(786) # set seed of random number generator
v9 = rnorm(5, mean=0, sd=1) 
v10 = rnorm(5, mean=0, sd=1)
v9 > v10
v9>0 & v10>0

#Recall logical operations are usually used in subsetting vectors based values.
v10[v10>0]

#Commonly Used Descriptive Functions
sort(v10) # default in increasing order; 
#Use sort(v10, decreasing=T) for decreasing order 
min(v10)
max(v10) 
mean(v10) # mean
sd(v10) # standard deviation
summary(v10) # 5 number summary plus mean
quantile(v10,.05) # return sample quantiles










