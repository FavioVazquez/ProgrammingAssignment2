############################################################
#Matrix inversion is usually a costly computation and 
#there may be some benefit to caching the inverse of a matrix 
#rather than compute it repeatedly.
############################################################

############################################################
#The functions in this script will calulate and cache the
#inverse of a matrix if it was calculated before and the 
#matrix has not change. In this script I will assume that
#there is some data in the session that would be affected
#by this functions.
############################################################

## This function creates a special "matrix" object that can cache 
##its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL
        
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        
        list(set=set, get=get,
             setinverse=setinverse,
             getinverse,getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
