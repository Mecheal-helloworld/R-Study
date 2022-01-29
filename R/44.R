c1 = c(1,2,3)
mode(c1)
c2 = c(1.2,1,TRUE)
c1 = list("11","22")
mode(c1)
c3 = 1:3
c4 = seq(1,9,2)
print(c3)
print(c4)
print(c2)
for (x in c2) {
  print(x)
}
names(c2)=c("1","2","3")
print(c2[1])
print(c2["1"])
str1 = "123456"
print(substring(str1,1,5))
print(substr(str1,1,5))
str2 = "hello world!"
strs = strsplit(str2," ")
for (str3 in strs) {
  print(str3)
}
print(paste(str1,str2,sep=" "))

x1 = as.numeric(str1)
print(x1)
print(as.character(x1))
print(paste(x1,str2,sep=" "))
print(1+TRUE)

toupper("Runoob")
tolower("Runoob")
nchar("中文", type="bytes")
nchar("中文", type="char")

nchar("xxxx",type = "bytes")
nchar("xxxx",type = "char")

gsub("/", "-", "2019/10/1") # 替换字符串

a = 11
b = 3
print(a%%b)
print((a%/%b))
print(a/b)

c2 = c("2","3","4")


c2 = c(1.2,1,TRUE)//(1.2 1.0 1.0)
for (cx in c2) {
  if(cx==TRUE){
    next
    print(c2)
  }
}
if(TRUE %in% c2){
  print(c2)
}
print(1=="1")
switch(
  3,
  "google",
  "runoob",
  "taobao",
  "weibo"
)
c6 = c("google",
  "runoob",
  "taobao",
  "weibo"
)
print(c6[3])

repeat { 
  // 相关代码 
  if(condition) {
    break
  }
}
while(TRUE){
  //
    if(condition) {
      break
    }
}
i=0
while(i<10){
  i=i+1
  print("hello")
}

for (variable in vector) {
  
}



list1 = list("1,2,3",1:3,list(1,2,3))
print(list1)

names(list1) = list("list1","list2","list3")

print((list1[1]))
print(list1$list1)
print(strsplit(unlist(list1[1]),","))
names(list1$list3) = list("l1","l2","l3")
print(list1$list3$l1+1)

matrix1 = matrix(1:12,3,4,byrow = TRUE,dimnames=list(list("row1","row2","row3"),list("col1","col2","col3","col4")))
print(matrix1)
print(matrix1[1,2])
print(matrix1["row1","col3"])
print(matrix1[1,])
print(matrix1[,2])
print(matrix1["row1",])
print(matrix1[,"col2"])
print(matrix1[12])

colnames(matrix1) = list("c1","c2","c3","c4")
print(matrix1)

matrix2 = t(matrix1)
print(matrix2)
matrix3 = matrix(c(1,0,0,0,1,0,0,0,1),3,byrow = TRUE)
print(solve(matrix3))

print(matrix1+1)
print(matrix1*2)
print(matrix1/2)
matrix4 = matrix(1:12,3,4,byrow = TRUE)
print(matrix1+matrix4)
print(matrix1-matrix4)
print(matrix1*matrix4)
print(matrix1/matrix4)
matrix5=matrix1%*%t(matrix4)
print(matrix5)

am = apply(matrix4,c(1),sum)
print(matrix4)
print(am)

func = function( m ){
  t = 0
  sign = 1
  for (mi in m) {
    if(sign){
      t= t + mi
      sign = 0
    }else{
      t = t-mi
      sign = 1
    }
  }
  return(t)
}

am = apply(matrix4,c(1),func)
print(matrix4)
print(am)

array1 = array(1:24,c(2,3,4))
print(array1)

print(array1[1,2,3])
print(array1[,2,1])
print(array1[,,1])

na = list(list("row1","row2"),list("col1","col2","col3"),list("matrix1","matrix2","matrix3","matrix4"))
print(array1)
array1 = array(1:24,c(2,3,4),dimnames = na)

print(array1["row1","col1","matrix1"])



fa = factor(c("man","woman","woman","man","man1"),labels=c("w","m"),exclude = 'man1')
print(fa[1])
f2 = factor(c(1,2,1,2,1,1,3,100),labels=c("m","f"),exclude = 3:100)
print(f2)

a = floor(3.6)
b = ceiling(3.4)
print(a)
print(b)


data1 = data.frame(1:3,c("w","m","n"))
print(data1)

str(data1)
summary(data1)

print(data1$X1.3)
print(data.frame(data1[,1]))

rownames(data1) = c("row1","row2","row3")
print(data1[1,])

data1$x3 = c(1.0,1.1,1.2)
print(data1)

data2 = rbind(data1,data.frame(X1.3=4,c..w....m....n..='o',x3=1.4))
print(data.frame(c(4),c('o'),c(1.4)))
print(data2)

print(data.frame(1:3,c("w","m","n")))
print(cbind(1:3,c("w","m","n")))
data3=data.frame(1:3,c("w","m","n"))
data4=cbind(1:3,c("w","m","n"))
print(mode(data3[1,1]))
data5 = as.data.frame(data4)
print(mode(data5[1,1]))
print(data5)

db1 = data.frame(
  name = c("小白", "小明"),
  number = c("101","102"),
  money = c(5000, 7000))

db2 = data.frame(
  name = c("小白", "小明"),
  sex = c("m","f"),
  year = c(12, 15))
res = merge(db1,db2,by.x=c("name","number"), by.y = c("name","sex"),all=FALSE,sort = FALSE)
print(res)

library("MASS")
library("reshape")
library("reshape2")
print(db1)
res1 = melt(db1,id=c("name"))
print(res1)

res2 = cast(res1,name~variable)
print(res2)
db3 = data.frame(
  name = c("小白", "小明"),
  number = c("101","102"),
  money = c(5000, 7000),
  number2 = c(101,102))
res1 = melt(db3,id = c("name","number"))
print(res1)
res2 = cast(res1,name+number~variable)
print(res2)

write.csv()



test = rep(1:10,each=2,length.out = 10)
print(test)



library("xlsx")
data <- read.xlsx(paste(path,"excle.xlsx",sep="\\"), sheetIndex = 1,header=false)
print(data)

library("jsonlite")
json_data = read_json(path = paste(path,"world-mapping.json",sep="\\"))
print(mode(json_data))

db1 = data.frame(
  name = c("小白", "小明","小华"),
  number = c("101","102","102"),
  money = c(5000, 7000,1000))
js_db = toJSON(db1)
cat(js_db)


