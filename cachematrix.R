## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##1. makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.----
makeCacheMatrix <- function(x = matrix()) {
  
  ## a. Initializing the inverse as NULL.---- 
  inv <- NULL 
  
  ## b. Setting the value of the matrix.----
  setM <- function( matrix ) {
    x <<- matrix
    inv <<- NULL
  }
  
  ## c. Getting the value of the matrix----
  getM <- function() {
    x
  }
  
  ## d. Setting the value of the matrix inverse ----
  setInv <- function(inverse) {
    inv <<- inverse
  }
  
  ## e. Getting the value of the matrix inverse ----
  getInv <- function() {
    inv
  }
  
  ## f. Returning a list of the subparts of the function ----
  list(setM = setM, getM = getM, setInv = setInv, getInv = getInv)
}

## Write a short comment describing this function
##2. cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. ----
##   If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  
  ## a. Getting the value of the invertible matrix from the makeCacheMatrix function ----
  inv <- x$getInv()
  
  
  if( !is.null(inv) ) { ##  This part returns the matrix inverse if it has been already set/solved
    message("Getting the cached inverse of the matrix")
    return(inv)
  }
  
  ## b. Solving the inverse of the matrix. This is if the value of the invertible matrix is NULL. ----
  data <- x$getM()  ## Getting the matrix
  
  inv <- solve(data, ...) ## Calculating the inverse of the matrix
  
  x$setInv(inv) ## Setting the inverse 
  
  inv ## Returning the resulting inverse matrix
}
