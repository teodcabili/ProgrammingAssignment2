## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##1. makecacheMatrix: This function creates a special "matrix" object that can cache its inverse.----
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
  
  ## f. Returning a list of the subparts ----
  list(setM = setM, getM = getM, setInv = setInv, getInv = getInv)
}




## Write a short comment describing this function
##2. cacheSolve: 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
