## Put comments here that give an overall description of what your
## functions do

## First function creates a special "matrix" object that can cache its inverse
## Second function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.



## Write a short comment describing this function

## This function creating a matrix:
     ## set the value of the matrix  
     ## get the value of the matrix
     ## set the value of the inverse
     ## get the value of the inverse
     ## create a list 


makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y){
          x <<- y
          inv <<- NULL
     }
     get <- function() {x}
     setInverse <- function(inverse) {inv <<- inverse}
     getInverse <- function() {inv}
     list(set = set, grt = get, setInverse = setInverse, getInverse = getInverse87)
}




## Write a short comment describing this function

##Function returns a value of data from function named "makeCacheMatrix" if it is
## not null (if the value has already been calculated). 
## Othervise, it calculates inverse of the data and sets the value.

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     inv <- x$getInverse()
     if(!is.null(inv)){
          message("Getting catched data")
          return(inv)
     }
     z <- x$get()
     inv <- solve(z, ...)
     x$setInverse(inv)
     inv
}
