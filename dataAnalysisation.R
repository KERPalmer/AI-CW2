
#define Min-Max normalization function
min_max_norm <- function(x) {
  0.8 * ((x - min(x)) / (max(x) - min(x))) + 0.1
}


#apply Min-Max normalization to first four columns in iris dataset
sanitised_norm <- as.data.frame(lapply(sanitised[2:7], min_max_norm))

#add date
sanitised_norm$Date = sanitised$Date

#show data
head(sanitised_norm)

#write to csv file
write.csv(sanitised_norm, "\\normalised.csv", row.names=FALSE)
