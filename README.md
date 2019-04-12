# ClustrPairs

This package takes in "Pair1  Pair2 Similarity_score" (tab seperated) and cluster the pairs which have threshold similirity cutoff 80. 
The similarity cutoff should be between 1 to 100.
The final output contains unique list of pairs and their corresponding cluster number. 
Additionally a small graph of connected component is also generated.


Installation

To install this package , you need to install the following in your R session.

install.packages("devtools")
install.packages("igraph")
install.packages("ggplot2")
library("devtools")
library("igraph")
library("ggplot2")

Now we can install the package using the following command:

install_github("ramadatta/ClustrPairs")

library("ClustrPairs")



