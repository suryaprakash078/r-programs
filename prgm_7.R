#pie chart
lab <- c("category A","category B","category C","category D","category E","category F","category G")
values <- c(24,32,26,38,42,28,30)
pie(values,lab,main = "labels vs values",col = rainbow(length(lab)))
legend("topright",legend = lab,fill = rainbow(length(lab)))


# bar chart
category <- c("a","b","c","d","e","f","g")
value <- c(10,12,13,14,15,10,11)
barplot(value,names.arg = category,main = "category vs value",col = "Blue",xlab = "category",ylab = "value",ylim = c(0,max(value)+5))
text(x = barplot(value,names.arg = category,col = rainbow(length(lab)) ,add = TRUE),y = values,label = value,pos = 3,cex = 0.3,col = "Black")