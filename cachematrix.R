## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I did the same things as in the example 
## expect using i for the inverse and inverse in the function names
makeCacheMatrix <- function(x = matrix()) {
    #First set the inverse i to NULL
    i <- NULL
    #Set x to y and set i to NULL
    set <- function(y)
    {
      x <<- y
      i <<- NULL
    }
    #Return the matrix x
    get <- function() x
    #Set inverse i 
    setinverse <- function(inverse) i <<- inverse
    #Return inverse i
    getinverse <- function() i
    #Define functions
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
## I did the same things as in the example 
## expect using i for the inverse and solve() to get the inverse if needed
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
  
    #Check if inverse has been already calculated
    i <- x$getinverse()
    if(!is.null(i)) 
    { 
      #Actually nothing further needs to be done but I display the message for information
      message("getting cached data")
    }
    else
    {      
      #If not then calculate the inverse by using solve()
      data <- x$get()
      i <- solve(data, ...)
      x$setinverse(i)
    }
    #Return the inverse i
    i
}
