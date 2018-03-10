pollutantmean <- function(directory, pollutant, id){
  files_list <- list.files(directory, full.names = TRUE)
  dat <- data.frame()                            
  for (i in 1:332) {                                
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  mean(dat[dat$ID %in% id, pollutant], na.rm=TRUE)
}
