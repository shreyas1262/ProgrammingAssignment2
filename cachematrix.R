## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function to create a matrix object to cache
## its inverse.
## The function supports setting the matrix,
## getting the matrix, setting the inverse
## and getting the inverse 
makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
		set <- function(y) {
			x <<- y
			inverse <<- NULL
		}
	get <- function() x
	setinverse <- function(inv) inverse <<- inv
	getinverse <- function() inverse
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## This function gives the inverse of the matrix
## returned by makeCacheMatrix above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inverse <- x$getinverse()
		if(!is.null(inverse)) {
			return(inverse)
		}
		data <- x$get()
		inverse <- solve(data)
		x$setinverse(inverse)
		inverse

}
