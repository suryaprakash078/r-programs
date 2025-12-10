df1<-data.frame(
  ID=c(1,2,3),
  NAME=c("Arun","Karthik","Ravi")
)
df2<-data.frame(
  Marks=c(85,90,95),
  Grade=c("A","A+","B")
)
column_joined<-cbind(df1,df2)
cat("Date frame after joining columns using cbind() :\n")
print(column_joined)
df3<-data.frame(
  ID=c(4,5),
  NAME=c("Siva","Kumar"),
  Marks=c(75,80),
  Grade=c("D","O")
)
row_joined<-rbind(column_joined,df3)
cat("Data frame after joining row using rbind() :\n")
print(row_joined)