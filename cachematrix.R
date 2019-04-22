##set_mat- sets matrix
##get_mat-gets the matrix
##get_inverse- gets inverse of matrix

## Function: makeCacheMatrix- creates special matrix

makeCacheMatrix<-function(x=matrix()){	
inv<-NULL

set_mat<-function(matrix){			#sets matrix
x<<-matrix
return(x)
}

get_mat<-function()x				#gets the matrix

set_inverse<-function(){			#sets inverse of matrix
inv<<-solve(x)
return(inv)
}
	
get_inverse<-function()inv			#gets inverse of matrix

list(set_mat=set_mat,get_mat=get_mat,set_inverse=set_inverse,get_inverse=get_inverse)
}


## Function: cacheSolve- creates inverse of special matrix returned by makeCacheMatrix

cacheSolve<-function(x,...){			
inv=x$get_inverse()
if(!(is.null(inv))){
print('getting cached data')
return(inv)				#returns inverse from cache
}else{
mat<<-x$get_mat()
inv_mat<<-x$set_inverse()
#x$get_inverse(inv_mat)
inv_mat				#returns inverse, if not previously calculated
}
}

cacheSolve(makeCacheMatrix(matrix(4:7, 2)))
cacheSolve(makeCacheMatrix(matrix(14:17,2)))

