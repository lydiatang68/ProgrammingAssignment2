## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
         set <- function(y){
                 x <<- y
                 m <<- NULL
         }
         get <- function() x
         setinverse <- function(inverse) m<<-inverse
         getinverse <- function() m
         list (set = set, get = get, 
               setinverse = setinverse,
               getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         m <- x$getinverse()
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(m)){
                 message("getting cached matrix")
                 return(m)
         }
         matrix <- x$get()
         m <- solve(matrix,...)
         x$setinverse(m)
         m
}
