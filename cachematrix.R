## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( x = matrix() ) {

	## Initialization of the inverse
    mi <- NULL

    ## set the matrix method
    set <- function( matrix ) {
            x <<- matrix
            mi <<- NULL
    }

    ##  Get the matrix and return the matrix
    get <- function() {
    	 
    	x
    }

    ##  set the inverse of the matrix
    setInverse <- function(inverse) {
        mi <<- inverse
    }

    ##  get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        mi
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {

    ## Return a matrix  inverse of 'x'
    i <- x$getInverse()

    ## Return the inverse if its already set
    if( !is.null(i) ) {
            message("getting cached data")
            return(i)
    }

    ## Get the matrix from our object
    data <- x$get()

    ## Calculate the inverse of the matrix
    i <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(i)

    ## Return the matrix
    i
}
