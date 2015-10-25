cacheSolve <- function(Matrix_data , ...) {
        StoredInvert <- Matrix_data[Getinvert()] ##this line grab the (potentially cached) invert from our special vector
        
        if(!is.null(StoredInvert)) ##has it previously been cached?
                {
                message("getting cached data")
                return(StoredInvert) ##return the cached value  and exit this function
        }
        # or we need to calcukate the invert 
        data <- Matrix_data$get()  #make a copy of the values in the main matrix 
        StoredInvert <- solve(data, ...)#calculate the invert, and stored it in our local object
        Matrix_data[Setinvert(StoredInvert)]#using the Setinvert function, store the value
        StoredInvert#return the invert 
        
        
}