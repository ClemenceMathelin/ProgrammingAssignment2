## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can chache its inverse.
## It sets the value of the matrix and get it, then set the value of the inverse matrix and get it.

MakeCacheMatrix <- function(x = matrix()) {
    invMatrix <- NULL
    set <- function(y) {
      x <- y
      invMatrix <- NULL
    }
    get <- function() x
    setinv <- function(inverse) invMatrix<<-inverse
    getinv <- function() invMatrix
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
## It computes the inverse of the matrix (from the MakeCacheMatrix function).

cacheSolve <- function(x, ...) {
   invMatrix <- x$getinv()
   if(!is.null(invMatrix)){
      message("getting cached data")
      return(invMatrix)
   }
   data <- x$getinv()
   invMatrix <- solve(data)
   x$setinv(invMatrix)
   invMatrix
        ## Return a matrix that is the inverse of 'x'
}
