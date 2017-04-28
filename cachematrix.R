## Put comments here that give an overall description of what your
## functions do

## The function makes a cache for the matrix, sets and gets the values

makeCacheMatrix <- function(x = matrix()) { ##creates the function
	m<-NULL                                  ##initializes m  
	set<<-function(y){                       ##sends y to the set function outside of the makeCacheMatrix environment
		x<<-y                                 ##sets x to the new value 
		m<<-NULL                              ##initilizes m external to the function
	}
	get<- function()x                       ##defines the get function and sets it to x   
	setsolve<-function(solve) m <<-solve   ##defines the setsolve function and sets m to solve outside the function
	getsolve<-function()m                  ##defines the getsolve function and sets it to m
	list(set=set,get=get,                  ##updates the functions 
		setsolve=setsolve,
		getsolve=getsolve)

}


## The checks to see if the inverse has already been calculated and if it has gets the cached data, if not it calculates the inverse.

cacheSolve <- function(x, ...) { ##creates the function cacheSolve
	m<-x$getsolve()               ##runs getsolve on x and stores it to the m variable
	if(!is.null(m)){              ##checks to see if m is set
	message("getting cached data")##prints a message of whats happening
	return (m)                    ##the function returns m
	}                             ##
	data<-x$get()                 ##runs get on the x and saves it to data
	m<-solve(data, ...)           ##runs solve on the data and stores it in m
	x$setsolve(m)                 ##runs setsolve on the x variabe
	m                             ##returns m
}
