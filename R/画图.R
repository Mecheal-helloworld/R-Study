
install.packages("showtext", repos = "https://mirrors.ustc.edu.cn/CRAN/")  # 安装 showtext
library("showtext")
font_files()   # 查看字体
barplot()
spine(counts,main = "Spinogram Example")

plot(cars$dist~cars$speed, #y~x，cars是R自带的数据
     main="Relationship between car distance & speed", #标题
     xlab = "Speed(miles per hour)", #x轴标题
     ylab = "Distance travelled (miles)", #Y轴标题
     xlim = c(0,30), #设置x轴的取值区间为0到30
     ylim = c(0,140), #设置y轴的取值区间为0到140
     xaxs = "i", #这里是设置x轴的风格，暂时没看明白有多大区别
     yaxs = "i",
     col = "red", #设置颜色
     pch = 19) #pch指代点的形状，用数字表示，可查看帮助文档

pairs(~wt+mpg+disp+cyl,data = mtcars, main = "Scatterplot Matrix")

x<- seq(-4, 4, 0.01)
y<- x^2

plot(x,y, ann = F, xaxt = "n", yaxt = "n",log = "x",panel.first="jjj")  
axis(1,-4:4, -4:4, las = 1)
axis(2,seq(0, 16, 4), seq(0, 16, 4), las = 1)
title( ylab = 'y', line = 2)


x = c(1,1,2)
y = c(1,4,4)
plot(y~x,type="l",pch = 5,main = "解体图",sub="hhhh",xlab="xxx",ylab="yyy",xlim=c(0,14),ylim=c(0,14),asp = 0.5)
#plot(c(2.5,2.5),c(0,5),,type="l",col="green")
axis()
abline(v=2.5,col="green")
segments(2.5,0,2.5,5,col="green")
legend()
pie(c(1,2,4,5,6,7),radius=0.7,angle = 90,density=10,clockwise=T,labels = c("h1","l2","s4","p5","c6","m7"),col = c("red","grey","blue","black","green","yellow"))
matrix1 = matrix(x,2)
print(matrix1)
barplot(matrix1,names.arg=c("h1","l2","s4"),beside=T,horizontal =T)
boxplot(y~x,varwidth=T)


curve(sin)
par(mfcol=c(2,2))
par(mfrow = c(2,2))

rep(x, times = 1, length.out = NA, each = 1)

dataset <- data.frame(
        value = c(1:200,51:150), 
        group = factor(rep(c("A","A", "B"), each = 100)),
        valuse=c(1:100,1:200))
boxplot( value ~ group, dataset)
y = c(10,9,14,8)
x = factor(rep(c(1,2),each = 2),labels = c("实验组","对照组"))
dataset = data.frame(value=c(1:100,1:100),group=factor(rep(c(1,2),each = 100),labels = c("实验组","对照组")))
boxplot(y~x ,main = "hhh",sub="图-1")

par(mfrow=c(2,3))
par(mfcol=c(2,3))

par(mfrow=c(1,1))


boxplot(dataset)

pairs(~wt+mpg+disp+cyl,data = mtcars, main = "Scatterplot Matrix",panel = points,upper.panel = NULL)






par(mfrow=c(1,1))
x = c(1:5)
y = 2*x
plot(y~x,axes=F,main= NULL, sub = NULL, xlab = NULL, ylab = NULL)
text(x=10, y = NULL, labels = "xx")
text(x=5, y = 3, labels = "x")
text(x=1:3, y = NULL, labels = "xXXX")

pretty(c(1,2,3,4,5))

x=1:5
y = 2^x
plot(y~x,ann=F)
a = plot(y~x,log="'C:\\Users\\ASUS\\Desktop\\1.txt'")
grid(col="green",lty=1)
plot(y~x,ylog=F)

warnings()

attach(mtcars)
str(mtcars)
aggregate(mtcars, by=list(cyl,vs), FUN=mean)
par(mfrow=c(2, 2),mar=c(4,4,1,1),lend=1,)
plot(y~x,xlab="x",ylab="y",mgp=c(0,0,0),xaxp= c(0, 5, 10))
segments(0,0,1,1)

boxplot(1:10,range = 0,names=c("111"),notch=T)

dpar = par(no.readonly = T)
par(fig=c(0,1,0,0.5))
par(dpar)
par("fin")
par("fig")
c1=c(0,0.5,0,0.5)
c2=c(0.5,1,0,0.5)
c3=c(0,0.5,0.5,1)
c4=c(0.5,1,0.5,1)
par(fig=c1)
par(fin=c(9,5.96875))
par("oma")
par(omi=c(0,0,1,0))
par("cin")
par("fin")
par("mai")
par("pin")
par("cxy")
par(pin = c(1.47,2.1))
par("pin")
par(new = T)
par(plt=c2)
par(pty="m")
par(usr = c(0,10,0,10))
par("usr")
par("xlog")
par("ylog")
par("usr")
par(ylog=F)



par(fig=c3,new = T)

par(fig=c4,new = T)

windowsFonts(
        A=windowsFont("华文彩云"),
        B=windowsFont("华文仿宋"),
        C=windowsFont("华文行楷"),
        D=windowsFont("华文楷体"),
        E=windowsFont("华文隶书"),
        F=windowsFont("华文中宋"),
        G=windowsFont("华文细黑"),
        H=windowsFont("微软雅黑"),
        J=windowsFont("华文新魏"),
        K=windowsFont("幼圆")
)
plot(1:10,1:10,type="n")
text(2,10,"华文彩云",family="A")
text(2,8,"华文仿宋",family="B")
text(2,6,"华文行楷",family="C")
text(2,4,"华文楷体",family="D")
text(2,2,"幼圆",family="K");
text(6,10,"华文隶书",family="E")
text(6,8,"华文中宋",family="F")
text(6,6,"华文细黑",family="G")
text(6,4,"微软雅黑",family="H")
text(6,2,"华文新魏",family="J")

par(font=4)

#切割画布
clip()

#画直方图
hist()
symbols

par(ann=F)
par("adj")
par(adj=1)
plot(y~x,sub="test",main="tittle")
par(bty="]")
par(dpar)
par(cex=1.5)
tx = text(2,5,labels="hhhhh",srt=45)
mtext(tx,adj=1)
plot()

par(lend = 2)
par("lend")
segments(3,3,4,4)
par("lwd")


par(xlog=T)
par("xlog")
y1=x1=0:5
par(mgp=c(3,1,0))
plot(y1~x1,xaxs="i")
plot(y1~x1,yaxs="i")


