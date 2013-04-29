library(portfolio)

posts <- read.csv("http://datasets.flowingdata.com/post-data.txt", sep=",", header=TRUE)

# 每一个矩形都代表一篇文章
# 尺寸依页面浏览量而定，明亮的绿色表明该文章获得的评论较多
map.market(id=posts$id, area=posts$views, group=posts$category, color=posts$comments, main="FlowingData Map")