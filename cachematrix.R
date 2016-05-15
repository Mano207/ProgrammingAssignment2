## Functions allow for the storage of the inverse of a matrix. 
##This allows for the program to calculate the inverse and store if required in subsequent operations



## Function creates a matrix and allows for storing its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(z) {
    x <<- z
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function first checks the cache to see if a value exists, if so it take that value
## if not it computes the inverse of the matrix

cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat, ...)
  x$setInverse(i)
  i
  
  
}
## todaysmatrix and inverse below

todaysmatrix$get()
       [,1] [,2]
[1,]    2    4
[2,]    3    5


cacheSolve(todaysmatrix)
      [,1] [,2]
[1,] -2.5    2
[2,]  1.5   -1
