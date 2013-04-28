hot_dog_places <- read.csv("http://datasets.flowingdata.com/hot-dog-places.csv", sep=",", header = TRUE)
# R语言中会自动在数字标头的前面加上字母“X”
# 所以我们要手动将其修改回来
names(hot_dog_places) <- c("2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010")
hot_dog_matrix <- as.matrix(hot_dog_places)
barplot(hot_dog_matrix, border=NA, space=0.25, ylim=c(0,200), xlab="Year", yLab="Hot dogs and buns (HDBs) eaten", main="Hot Dog Eating Contest Results, 2000-2010")