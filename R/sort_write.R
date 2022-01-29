library("readr")
db1 = data.frame(
  name = c("小白", "小明","小华"),
  number = c("101","102","102"),
  money = c(5000, 7000,1000))

db2 = data.frame(
  name = c("小白", "小明"),
  number = c("101","101"),
  year = c(12, 15))
res = merge(db1,db2,by.x=c("name","number"), by.y = c("name","number"),all=TRUE,sort = FALSE)
print(res)

path="C:\\Users\\ASUS\\Desktop"
file_path=paste(path,"test.csv",sep="\\")  


num_res = length(res) 
sign_res = 1:num_res #输出标志
resign = 1 #确保只输出一次标题头
print_i = 1 #记录每次循环开始判断的第一个没有输出的行的位置
repeat{
  for (res_j in (print_i+1):num_res) {
      if((res[print_i,1]<res[res_j,1])&&sign_res[res_j]!=0){
        print_i = res_j
      }
    }
  sign_res[print_i] = 0
  if(resign){
    write_csv(x=res[print_i,],file = file_path,append=FALSE)
    resign = 0
  }else{
    write_csv(x=res[print_i,],file = file_path,append = TRUE)
  }
  sign=0
  for (num_i in 1:num_res) {
    if(sign_res[num_i] == num_i){
      print_i=num_i
      sign=0
      break
    }
    sign=1
  }
  if(sign==1)break
}

