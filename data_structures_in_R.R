author <- list(name="Shoaib Najeeb Arayilakath", email="shoaibnajeeb@gmail.com")

### VECTORS
#In R, a vector is a 1-dimensional group of ordered elements
#The fundamental datastructure, Homogeneous mode, Different types of vectors
#There are no scalars/constants

#Example of a numeric vector with 3 elements
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


### MATRICES AND ARRAYS
#In R, a matrix is a vector with two additional attributes: the number of rows and the number of columns.
#Homogenous mode
#Matrices are special cases of a more general R type of object:arrays. Arrays can be multidimensional.

#Use "matrix()" to create a matrix
m0 = matrix(0,nrow=4,ncol=3) # creates 4x3 matrix of 0's
m1 = matrix(1:12,4,3) # specify values by columns by default
matrix(1:12,4,3,byrow=T) # you can specify values by rows

#Use "dim()" to retrieve/set dimension of a matrix
dim(m1) # retrieve dimension of m1
dim(m1)[1] # no. of rows in m1
dim(m1)[2] # no. of cols in m1
dim(m1) = c(3,4) # you can even modify dimension

#Matrix indexing
#Positive and negative indexing, row & column based
m2 <- matrix(1:20, nrow = 5)
m2[1:3,] #First three rows
m2[,c(2,3)] #Columns 2 & 3
m2[2, c(3,4)] #2nd row and 3rd & 4th columns
m2[-c(4,5),] #Negative index - remove 4th & 5th rows

m2[9] #linear index of [9]
m2[m2 > 10] # select elements based on their values

#Filtering on rows
m2[m2[,3] > 13,]

#Use "colnames()" to assign names to columns
colnames(m2) #NULL initially
colnames(m2) <- paste0("V", as.character(1:4))

#Commonly used matrix arithmetics
set.seed(786);  
m3 <- matrix(rpois(8,4),4,2)
t(m3) # transpose
m3*m3 # element-wise product
m4 = t(m3)%*%m3 # matrix product
solve(m4) # inverse
cbind(1:4,m3) # combine vectors/matrices by columns
rbind(t(m3),1:4) # combine vectors/matrices by rows
diag(m4) # diagonal elements in m4
diag(1:4,4,4) # create a diagonal matrix

### LISTS
#Recursive vector, is.list() to check; most flexible data structure in R
#Heterogenous mode; Each component is a separate object, which can be a vector, array, or list itself
#Supports key:value pair operations 

#Use "list()" to create list objects
list1 = list(name="Joe", wife="Mary", no_children=3, child_ages=c(4,7,9))

#Use "length()" to retrieve no. of top level components 
length(list1)

#Use "names()" to retrieve/modify names of top level components
names(list1)

#List indexing
list1$name #using "$" operator
list1[["wife"]] #using component name
list1[[4]] #using numeric index of components

list1[1] #single bracket operation

#Recursive property
ls1 <- list(u = 5, v = 12)
ls2 <- list(w = 13)
list2 <- list(ls1, ls2) #List inside a list

#Add a component to list
list2$ls3 <- 0



### DATA FRAMES
#Two-dimensional rows and columns structure. 
#Column may have a different mode (heterogenous).
#Data frame is a list of equal-length vectors.

#Creating data frame using "data.frame()" function
clm1 <- c(1:10)
clm2 <- rnorm(10)
clm3 <- rpois(10, lambda = 4)

df1 <- data.frame(clm1, clm2, clm3)

#Accessing data from "Dataframe"
df1$clm2 #List based; returns a vector
df1[,2] #Matrix based
df1[4:7,]; df1[4:7, 3, drop = FALSE] #subsetting a dataframe

df1[df1$clm3 == 5,] #Filtered subset

df1$clm2[df1$clm3 == 5] #Filtering clm2 on clm3 == 5

#Assign new values to dataframes
df1$clm2[df1$clm3 == 5] <- NA

df1[is.na(df1$clm2),] #Rows where clm2 == NA



### FACTORS
#A factor is a 1-dim object used to specify a discrete classification
#Consists of a record of the distinct values in that vector, called levels.

#Create a factor object using "factor()" function
country <- factor(c("India", "Australia", "India", "South Africa", "India", "Australia", "South Africa"))

#Levels of the factor "levels()"
levels(country)

runs <- c(200, 312, 298, 233, 290, 276, 300)
#split and tapply
split(runs, country)
tapply(runs, country, sum)



### STRINGS
grep() #grep(pattern,x) searches for a specified substring pattern in a vector of strings.
nchar() #gives length of strings
paste() #for concatenating strings and sprintf() for string printing with support for dynamic strings using % argument
substr() #for extracting substrings based on position
strsplit() #for splitting strings on split argument, like ","
regexpr() #finds the character position of the first instance of pattern with in text
gregexpr() #finds all instances of pattern
sub(); gsub() #for replacing parts of text


