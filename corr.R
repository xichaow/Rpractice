corr <- function(directory, threshold=0){
  vcorr <- c()
  files_list <- list.files(directory, full.names = TRUE)
  dat <- data.frame()
  for (i in 1:332){
    dat <- read.csv(files_list[i])
    num <- nrow(na.omit(dat[dat$ID == i,]))
    if (num > threshold){
      vcorr <- cbind(vcorr,cor(dat$sulfate,dat$nitrate, use="complete.obs"))
    }
  }
  vcorr
}
