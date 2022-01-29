library(ggplot2)
name <- c("多","中","少","中","少")
data1 <- data.frame(name) # 转化为数据框
ggplot(data1,aes(x=name)) + geom_bar()
geom_bar
geom_point
geom_histogram
geom_boxplot
xlab
ylab
xlim
ylim
labs
ggtitle
#theme,可以使用语言自带，也可以自定义
theme_bw()
scale_y_continuous
ggsave