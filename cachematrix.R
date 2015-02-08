## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I did the same things as in the example 
## expect using i for the inverse and inverse in the function names
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y)
    {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
## I did the same things as in the example 
## expect using i for the inverse and solve() to get the inverse if needed
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
