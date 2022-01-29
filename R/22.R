list_data = list("runoob", "google", c(11,22,33), 123, 51.23, 119.1)
names(list_data) = c("111","222","333","444","555","666")
print(list_data)

ml = unlist(list_data)
print(ml[1])

rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P = matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P["row1","col1"])

vector1 = c(5,9,3)
vector2 = c(10,11,12,13,14,15)
array1 = array(c(vector1,vector2),dim = c(3,3,2))
vector3 = c(9,1,0)
vector4 = c(6,0,11,3,14,1,2,6,9)
array2 = array(c(vector1,vector2),dim = c(3,3,2))
matrix1 = array1[1,,]
matrix2 = array2[1,,]
result = matrix1 + matrix2
print(result)

vector1 = c(5,9,3)
vector2 = c(10,11,12,13,14,15)
new_array = array(c(vector1,vector2),dim = c(3,3,2))
print(new_array)

result = apply(new_array, c(1), sum)
print(result)

cm =c(1,2,3)
names(cm) = c("11","22","333")
print(cm)
print(cm["2"])

cc = 1:5
names(cc) = c("111","22","3333","44444","555555")
print(cc)

list_name = list(c("row1","row2","row3"),c("col1","col2","col3"),c("matrix1","matrix2"))
new_array = array(c(vector1,vector2),dim = c(3,3,2),dimnames=list_name)
print(new_array)

vector111 = c(10,11,12,13,14,15)
arr = array(vector111,c(3,2))
print(arr)

arr = array(vector111,c(3,1))
print(arr)

vector1 = c(5,9,3)
vector2 = c(10,11,12,13,14,15)
new.array = array(c(vector1,vector2),dim = c(3,3,2))
print(new_array)

result = apply(new_array, c(1), sum)
print(result)

result = apply(new_array, 1, sum)
print(result)

result = apply(new_array, 1:3, sum)
print(result)

result = apply(new_array, 3, sum)
print(result)

result = apply(new_array, 2, sum)
print(result)

result = apply(new_array,1:2 , sum)
print(result)

result = apply(new_array,c(1,3) , sum)
print(result)

new_array = array(c(vector1,vector2),dim = c(3,3,2),dimnames=list_name)
print(result)

result = apply(new_array,c(1,3) , sum)
print(result)

mi = c(1,2,3)
mi2 = 1:5
mi3 = seq(1,8,3)
print(mi)
print(mi2)
print(mi3)
print(mi[1:4])

names(mi) = list("111","222","333")

print(mi["111"])

print(mi)

p = function(a = 1,b){
  
}
p(1)

list_1 = list(c(1,2,"3"),1:5,"hello",FALSE,list("1111","2222"))
c4 = list_1[4]
mode(c4)
c2 = unlist(list_1[2])
print(c2)
mode(c2)
print(list_1[5][1][1])
c5 = unlist(list_1[5][1])
print(mode(c5))

names(list_1) = list("c1","c2","c3","c4","c5")
print(list_1$c1)

while(c2){
  print("444")
}
print(list_1)

mc = c(3:14)
names(mc) = c("1","2","3","4","5","6","7","8","9","10","11","12")
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P = matrix(mc, 4, byrow = FALSE, dimnames = list(rownames, colnames))
print(P["row1","col1"])
print(P)
print(P[1])
print(t(P))
print(solve(P))

arr = array(1:50,c(2,3,2,2))

print(arr[1])
print(arr)

p1 = apply(arr, 1:3,sum)
print(p1)

mint = 2      #(2)   ->   (2,2,2)
mintc = 1:3   #(1,2,3)    (1,2,3)  (3,4,5) -> (3,4,5,3,4,5)
mintc2 = 1:6  #(1,2,3,4,5)
print(mint * mintc * mintc2)

t= 11
m = 11
func = function( m ){
  t = 0
  sign = 1
  for (mi in m) {
    if(sign){
      t= t + mi + m
      print(t)
      sign = 0
    }else{
      t = t-mi
      sign = 1
    }
  }
  print(mode(t))
  return(t)
}
p1 = apply(P, 1,func)
print(P)
print(p1)
print(m)
print(t)
matrix1 = matrix(1:6,3)
print(matrix1)
res = dim(matrix1)%*%t(dim(matrix1))
print(res[1,2])
digui = function(mi){
  mjkl = 0
  if(mi>=0){
    digui(mi-1)
    print(mi)
    print(mjkl)
  }
}
mjkl = 1


digui(5)
print(mjkl)

