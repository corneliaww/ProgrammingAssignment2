## Put comments here that give an overall description of what your
## functions do

## The function makes a cache for the matrix, sets and gets the values

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<<-function(y){
		x<<-y
		m<<-NULL
	}
	get<- function()x
	setsolve<-function(solve) m <<-solve
	getsolve<-function()m
	list(set=set,get=get,
		setsolve=setsolve,
		getsolve=getsolve)

}


## The checks to see if the inverse has already been calculated and if it has gets the cached data, if not it calculates the inverse.

cacheSolve <- function(x, ...) {
	m<-x$getsolve()
	if(!is.null(m)){
	message("getting cached data")
	return (m)
	}
	data<-x$get()
	m<-solve(data, ...)
	x$setsolve(m)
	m
}
