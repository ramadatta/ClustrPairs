# September 13, 2018

# Find connected components from connected pairs

# 

#' Connected Components from connected pairs
#'
#' This script takes in "Pair1  Pair2 Similarity_score" (tab seperated) and cluster the pairs which have threshold similirity cutoff. The final output contains unique list of pairs and their corresponding cluster number
#' @param connected_pairs.txt
#' @keywords connected_pairs
#' @export
#' @examples ClustrPairs("connected_pairs.txt")
#' @name ClustrPairs
#install.packages("igraph")
#install.packages("ggplot2")
library(igraph)
library(ggplot2)

ClustrPairs <- function(filename){
data <- read.table(file = filename, sep = "\t", header=TRUE)
#return(head(data))

colnames(data) <- c("Pair1","Pair2","Similarity")
#head(data)

Pairs_gteq80 <- subset(data,data$Similarity >= 0.80, select = Pair1:Pair2) ##Minimum 80% 

#head(Pairs_gteq80) 

g1 <- graph.data.frame(Pairs_gteq80, directed = FALSE)
g1
plot(g1)
cl1 <- clusters(g1)

tbl1 <- cbind( V(g1)$name, cl1$membership )
tbl1
write.table(tbl1,file="Samples_ClusterNumber.txt",row.names=FALSE) # drops the rownames and write to text file
#return(tbl1)
}
