 cat("STUDENT MARK PROCESSING SYSTEM \n\n")
 total_stu = 3
 # for loop
 for (s in 1:total_stu){
   cat("Enter marks for student",s,"\n")
   subjects = 3
   tot = 0
   sub = 1
   
   # while loop
   while(sub<= subjects){
     mark = as.integer(readline(paste("Enter your mark for the subject",sub,":")))
     # repeat loop
     repeat {
       if (mark>=0 && mark<100){
         break
       } else {
         cat("Invalid mark! Enter a value between 0 and 100 \n")
         mark = as.integer(readline(paste("Re-enter your mark for the subject",sub,":")))
         }
     }
     tot= tot+mark
     sub=sub+1
   }
   average = tot/subjects
   
   # result
   if (average>=50){
     cat("Result:PASS \n")
   } else {
     cat("result:FAIL \n")
   }
   cat("total:",tot,"Average:",average,"\n\n")
 }