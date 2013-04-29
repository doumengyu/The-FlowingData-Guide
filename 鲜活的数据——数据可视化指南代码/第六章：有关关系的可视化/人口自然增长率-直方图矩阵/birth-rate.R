library(lattice)

# Load the data
birth_yearly <- read.csv("http://datasets.flowingdata.com/birth-rate-yearly.csv", sep=",", header=TRUE)

#过滤掉异常值出生率132
birth_yearly.new <- birth_yearly[birth_yearly$rate<132,]

#转化年份，从数字转成字符串
birth_yearly.new$year <- as.character(birth_yearly.new$year)

histogram( ~ rate | year, data=birth_yearly.new, layout=c(10,5))
update(h, index.cond=list(c(41:50, 31:40, 21:30, 11:20, 1:10)))