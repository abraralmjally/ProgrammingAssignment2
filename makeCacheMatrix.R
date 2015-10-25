makeCacheMatrix <- function(Matrix_data= matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
       dimnames = NULL))
        
{	
        StoredInvert <- NULL
 
        set<- function(NewValues)
        {
         Matrix_data<<-NewValues #the variable Matrix_data in the containing environment
         StoredInvert <<-NULL  
                 }
        get<-function() 
                {
                Matrix_data
        }
        
        Setinvert<-function(solve)
                {
                StoredInvert<<-solve
                 }
        Getinvert<- function() 
                {
                StoredInvert 
                }
        list(set=set, get=get, setinvert = Setinvert, getinvert= Getinvert )
        }

