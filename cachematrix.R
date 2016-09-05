##makeCacheMatrix takes a matrix as input and sets the inv to null. This function contains several other functions which act as setters and getters
## the matrix and the value of inv are stored in the enivronment of this function. a list of functions is created to return. 


## The function "cacheSolve" takes the matrix which is in the type of makeCacheMatrix
##It retrives the value of inv from makeCacheMatrix which is the required inverse matrix
## checks for existing values. if there isn't any existing value it computes the inverse of matrix 
## by retriving the matrix using get() from makeCacheMatrix environment. It sets the inverse to setinv and returns inv 


makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
     set <- function(y) {
          x <<- y
          inv <<- NULL
     }
     get <- function() x
     setinv <- function(inverse) inv <<- inverse
     getinv <- function() inv
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)


}

cacheSolve <- function(x,...) {
	print("hello I am in cacheSolve")
       inv <- x$getinv()
     if(!is.null(inv)) {
          print("getting cached data")
          return(inv)
     }
	print("oops, it's not in cache")
     data <- x$get()
	print("this is the matrix\n")
	print(data)
     inv <- solve(data)
     x$setinv(inv)
inv
}

