############################################################
#Matrix inversion is usually a costly computation and 
#there may be some benefit to caching the inverse of a matrix 
#rather than compute it repeatedly.
############################################################

############################################################
#The functions in this script will calulate and cache the
#inverse of a matrix if it was calculated before and the 
#matrix has not change.
############################################################

## This function creates a special "matrix" object that can cache 
##its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL
        
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        
        get <- function() x
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        
        list(set=set, get=get,
             setinverse=setinverse,
             getinverse,getinverse)
}

## This function computes the inverse of the special "matrix" 
##returned by makeCacheMatrix above. If the inverse has already
##been calculated (and the matrix has not changed), then the 
##cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
       inv <- inv$getinverse()
       
       if(!is.null(inv)){
               message("getting cache data")
               return(inv)
       }
       inv <- solve(matrix, ...)
       x$setinverse(inv)
       inv
}

