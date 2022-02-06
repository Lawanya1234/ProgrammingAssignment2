## Put comments here that give an overall description of what your
## functions do

## There are two functions makeCacheMatrix, makecacheMatrix
## makeCacheMatrix consist of set, get, setinv, getinv
## library(MASS)is used to calculate inverse for non squared matrix as well as squared matrix
library(MASS)
makeCacheMatrix <- function (x= matrix()) {
  inv <- NULL    # initializing inverse as NULL
  set <- function (y) {
                      x <<- y
                      inv <<- NULL
}
get <- function()x # function to get matrix x
setinv <- function (inverse) {inv <<- inverse}
getinv <- function() {inv}  3 function to obtain inverse of the matrix

list (set = set, get= get,
      setinv = setinv,
      getinv= getinv)
}
## write a short comment describing this function 
## This function is used to get the cache data 
cacheSolve <- funcion (x, ...) ## gets cache data
{
inv <- x$getinv()
if(!is.null(inv)){
                   message ("gettig cached data!")
                   return (inv)
}
mat<-x$get()
inv<-solve(mat,...)  #calculates inverse value 
x$setinv(inv)
inv ## return a matrix that is inverse of 'x'
}