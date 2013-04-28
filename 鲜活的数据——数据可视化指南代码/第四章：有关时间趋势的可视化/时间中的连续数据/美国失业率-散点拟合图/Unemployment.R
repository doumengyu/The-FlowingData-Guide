unemployment <- read.csv("http://datasets.flowingdata.com/unemployment-rate-1948-2010.csv", sep=",", header = TRUE)
plot(1:length(unemployment$Value), unemployment$Value,  ylab="Unemployment Rate")
# degree控制多项式的阶数，span控制曲线的平滑度。span越接近0，拟合的程度越高
scatter.smooth(x=1:length(unemployment$Value), y=unemployment$Value, ylim=c(0,11), degree=2, col="#CCCCCC", span =0.5)