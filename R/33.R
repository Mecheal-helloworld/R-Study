table1 = data.frame(
  name = c("Tom", "Jack","Rose"),
  number1 = c("001","002","003"),
  money = c(1000, 2000,3000),
  row.names = c("row1","row2","row3")
)
table2 = data.frame(
  name = c("Tom", "Jack2","Rose"),
  number2 = c("001","002","004"),
  money = c(3000, 4000,3000),
  row.names = c("row1","row2","row3")
)
table3 = data.frame(
  name = c("Tom2", "Jack2"),
  number1 = c("003","004"),
  money = c(3000, 4000),
  row.names = c("row1","row2")
)
print(table1)
print(table2)
str(table1)
summary(table1)
table4 = rbind(table1,table3)
str(table4)
summary(table4)
table4$apartment = c("transition","technology","hjash","hjkshda")
print(table4)
sites <- c("Google","Runoob","Taobao")
likes <- c(222,111,123)
url <- c("www.google.com","www.runoob.com","www.taobao.com")

# 将向量组合成数据框
addresses <- cbind(sites,likes,url)
print(addresses)

table6 = merge(table1,table2,by.x=c("name","number1"),by.y=c("name","number2"),all = FALSE)
print(table6)

# 安装库，MASS 包含很多统计相关的函数，工具和数据集
install.packages("MASS", repos = "https://mirrors.ustc.edu.cn/CRAN/") 

#  melt() 和 cast() 函数需要对库 
install.packages("reshape2", repos = "https://mirrors.ustc.edu.cn/CRAN/") 
install.packages("reshape", repos = "https://mirrors.ustc.edu.cn/CRAN/") 
library("MASS")
library("reshape")
library("reshape2")
table7 = melt(table1,id=c("name","number1"))
print(table7)
table71 = data.frame(
  name = c("Tom", "Tom","Tom"),
  number1 = c("001","001","001"),
  variable = c("money", "money","money"),
  value = c(1000,2000,3000),
  row.names = c("row1","row2","row3")
)
print(table71)
table8 = cast(table71,name+number1~variable,min)
print(table8)
table9= dcast(table71,name~variable+number1,mean)
print(table9)
