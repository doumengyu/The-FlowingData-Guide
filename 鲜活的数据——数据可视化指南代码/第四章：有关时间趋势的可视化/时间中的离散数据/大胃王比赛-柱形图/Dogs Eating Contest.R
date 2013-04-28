hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv", sep=",", header = TRUE)

# 这里生成的图用颜色区别是否美国人夺冠
#fill_colors<-c()
#for(i in 1:length(hotdogs$Country)){
#  if(hotdogs$Country[i]=="United States"){
#    fill_colors<-c(fill_colors,"#821122")
#  }else{
#    fill_colors<-c(fill_colors,"#cccccc")
#  }
#}
#barplot(hotdogs$Dogs.eaten,names.arg=hotdogs$Year,col=fill_colors,border=NA,xlab="Year",ylab="Hot dogs and huns(HDB) eaten")

# 这里颜色区别是否打破了之前的纪录
fill_colors<-c()
for(i in 1:length(hotdogs$New.record)){
  if(hotdogs$New.record[i]==1){
    fill_colors<-c(fill_colors,"#821122")
  }else{
    fill_colors<-c(fill_colors,"#cccccc")
  }
}
barplot(hotdogs$Dogs.eaten,names.arg=hotdogs$Year,col=fill_colors,border=NA,xlab="Year",ylab="Hot dogs and huns(HDB) eaten",space=0.3,main="Nathan's Hot Dog Eating Contest Results,1980-2010")