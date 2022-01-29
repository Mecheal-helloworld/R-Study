#data.frame
table = data.frame(
  name = c("Tom", "Jack"),
  number = c("001","002"),
  money = c(1000, 2000)
)
print(table,encoding="gbk") # ???? table ????
str(table)
result <- table[,1:2]
print(result)

# ??????��
sites <- c("Google","Runoob","Taobao")
likes <- c(222,111,123)
url <- c("www.google.com","www.runoob.com","www.taobao.com")

# ????��???ϳ????ݿ?
addresses <- cbind(sites,likes,url)
print(addresses)
parse()
search()

path = "C:\\Users\\ASUS\\Desktop"

data <- read.csv(paste(path,"test.csv",sep="\\"), encoding="GBK")
print(data)

write.csv(addresses,paste(path,"runoob.csv",sep="\\"),quote=T)

install.packages("xlsx", repos = "https://mirrors.ustc.edu.cn/CRAN/")
any(T,F,T)
any(F,F,F)
any(T,F,F)
all(T,F,T)
print(grepl("xlsx",installed.packages()))
any(grepl("xlsx",installed.packages()))
library("xlsx")
data <- read.xlsx(paste(path,"excle.xlsx",sep="\\"), sheetIndex = 1,header=F)
print(data)
print(mode(data))

write.xlsx(table1,paste(path,"excle.xlsx",sep="\\"), sheetName = "sheet2",col.names=F)

install.packages("XML", repos = "https://mirrors.ustc.edu.cn/CRAN/")
any(grepl("XML",installed.packages()))
library("XML")
result <- xmlParse(file=paste(path,"web.xml",sep="\\"))
print(result)
root = xmlRoot(result)
print(xmlSize(root))

# תΪ?б?
xml_data <- xmlToList(result)
print(xml_data)
# xml ?ļ?????תΪ???ݿ?
xmldataframe <- xmlToDataFrame(doc=paste(path,"web.xml",sep="\\"))
print(xmldataframe)

install.packages("rjson", repos = "https://mirrors.ustc.edu.cn/CRAN/")
any(grepl("rjson",installed.packages()))
library("rjson")
sink()
result <- fromJSON(file=paste(path,"data.json",sep="\\"))
print(result)
any(grepl("jsonlite",installed.packages()))
grepl("jsonlite",installed.packages())

library("jsonlite")

lit = list("123",TRUE)
library()#查看已安装的包
cat(unlist(lit[2]))

search()

file = paste(path,"test.json",sep="\\")
result <- read_json(path=paste(path,"data.json",sep="\\"))
cat(result$memeber[[1]]$name)
#write_json(x=result,path=file)
res=toJSON(table)
write(res,file)
cat(table)
write_json(x=table,path=file)
print(result)
dat = result$memeber[[1]]$number
print(mode(dat))
res = as.data.frame(result)
json1 = toJSON(res)
print(res)
res1 = flatten(res)
print(res1)

install.packages("RMySQL", repos = "https://mirrors.ustc.edu.cn/CRAN/")
any(grepl("RMySQL",installed.packages()))
library(RMySQL)
mysqlconnection = dbConnect(MySQL(), user = 'sms', password = 'sms', dbname = 'test-888',host = 'localhost')#��?ӵ????ݿ?
dbListTables(mysqlconnection)#???????ݱ?
result = dbSendQuery(mysqlconnection, "delete from tbl_user;")#???ݿ?????
print(result)
fetch(result,n=1)#??ȡ????

哈哈哈="哈哈哈"
cat(哈哈哈)
print(哈哈哈)
length=readline()
print(length)
a = readLines()
print(a)
a = readline("请输入：")
print(a)
a = 1:5
b = 2:8
print(x=a)
print("111")
cat(a)
sink("D:\\Program Files\\R\\123.txt")
cat(a)
eval.parent()

library(RMySQL)
mysqlconnection = dbConnect(MySQL(), user = 'sms', password = 'sms', dbname = 'test-888',host = 'localhost',encoding = "utf-8")
values = c( '好的，下周末我过去你那。')
insert1="INSERT INTO tbl_message(ID,NOTE,SENDUNAME,RECEIVEUNAME,POSTTIME,READSIGN) VALUES (null,"
insert2 = ", 'njust', 'sun', '2016-08-27 00:00:00', 0)"
insert3 = "'好的，下周末我过去你那。'"
result = dbSendQuery(mysqlconnection, paste(insert1,insert3,insert2,sep = ""))
dbConnect.close(mysqlconnection)

