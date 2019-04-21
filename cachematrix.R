## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creates a special matrix object that can cashe its inverse
cacheMatrix <- function(x = matrix()) {
	## Initialize the inverse property
	inv <- NULL
	## Method to set the matrix
	set <- function(j) {
		x <<- j
		inv <<- NULL
	}
	
	## Method the get the matrix
	get <- function()x
	## Method to set the inverse of the matrix
	setI <- function(inverse) inv <<- inverse
	## Method to get the inverse of the matrix
	getI <- function() inv
	## Return a list of the methods
	list(set = set,
		get = get,
		setI = setI,
		getI = getI)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	inv <- x$getI()
	## Just return the inverse if its already set
	if (!is.null(inv)) {
	message("get cached data")
	return(inv)
	}
	## Get the matrix from object
	mat <- x$get()
	## Calculate the inverse using matrix multiplication
	inv <- solve(mat, ...)
	## Set the inverse to the object
	x$setI(inv)
	## Return the matrix
	inv
}
