complete <- function(directory, id){
  files_list <- list.files(directory, full.names = TRUE)
  dat <- data.frame()                            
  for (i in 1:332) {                                
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  result <- matrix(nrow = 0, ncol=2)
  colnames(result) <- c("id","nobs")
  for (i in id){
    num <- nrow(na.omit(dat[dat$ID == i,]))
    result <- rbind(result, c(i,num))
  }
  result
}
