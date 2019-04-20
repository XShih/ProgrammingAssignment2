## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
cacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(j) {
		x <<- j
		inv <<- NULL
	}

	get <- function()x
	setI <- function(inverse) inv <<- inverse
	getI <- function() inv
	list(set = set,
		get = get,
		setI = setI,
		getI = getI)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inv <- x$getI()
	if (!is.null(inv)) {
	message("get cached data")
	return(inv)
	}
	mat <- x$get()
	inv <- solve(mat, ...)
	x$setI(inv)
	inv
}
