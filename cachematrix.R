## invert a matrix and cache so no need to recreate

## this will cache the matix if necessary

makeCacheMatrix <- function(x = matrix()) {
i<-NULL
  set<function(y){
    x<<-y
    i<<-NULL
  }
  get <- function() x
  setinv <- function(solve) i <<- inv
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## this will invert  matrix if i hasn't already been solve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
  
  }
