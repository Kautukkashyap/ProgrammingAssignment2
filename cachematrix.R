## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) { #Define the argument 
    inv<-NULL #intialize the value of x 
    set<-function(y){      #defines set function to set the values of
        x<<-y              #matrix in new environment
        inv<<-NULL         #if there is value set value to null
    }
    get<-function() x      #define the get function 
    setinverse<-function(inv) m<-inv    #parent environment for inv
    getinverse<-function() m            #get the values of inv wehre called
    list(set=set,get=get,getinverse=getinverse,setinverse=setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m<-x$getinverse
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data<-x$get()
    m<-solve(data,...)
    m
}

