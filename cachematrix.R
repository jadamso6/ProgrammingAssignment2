makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function (y) {
    x <<- y
    i <<- NULL
  }
  get <- function () x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



cacheSolve <- function (x, ...) { 
  i <- x$getinverse()
  if(!is.null(i)) {
  message("getting cahed data")
  return (i)
}
mat <- x$get()
i <- solve (mat,...)
x$setinverse (i)
i
}




