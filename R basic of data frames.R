#vectors created by ashutosh
Name = paste("Person",1:12)

Income = c(14574, 7606, 8611, 9175, 8058, 8105, 11496, 9766, 10305, 14379, 10713, 15433)

Passive_income=c(104,234,245,544,353,836,665,334,234,1533,342,233)

Expenses = c (12051, 5695, 12319, 12089, 8658, 840, 3285, 5821, 6976, 16618, 10054, 3803)

Loan_amount=c(1024,3234,2455,5434,6553,8866,8665,2334,2334,1123,3442,4323)

Defaulters = c("NA","NA","NA","NA","YES","NA","YES","NA","YES","NA","NA","YES")
#used data.frame to make data frame using vectors
data.frame(Name,Income,Passive_income,Expenses,Loan_amount,Defaulters)

newdata=data.frame(Name,Income,Passive_income,Expenses,Loan_amount,Defaulters)

View(newdata)
newdata
#find person with highest number of income AND LOWEST INOME OF THE PERSON

MAX=max(Income)
MAX
newdata[newdata$Income==MAX,"Name"]
MIN=min(Income)
MIN
newdata[newdata$Income==MIN,"Name"]

#FIND THE PERSON WHO ARE DEFAULTERS 

newdata[newdata$Defaulters=="YES",c("Name","Defaulters")]

#find person with highest number of loan amount  AND LOWEST number of the loan
MAX1=max(Loan_amount)
newdata[newdata$Loan_amount==MAX1,"Name"]

MIN1=min(Loan_amount)
newdata[newdata$Loan_amount==MIN1,"Name"]

#income more than 8000 and loan is more than 5000 and are defaluters

newdata[newdata$Income> 8000 & newdata$Loan_amount >5000,]

#income more than 8000 and loan is more than 5000 and are defaulters

newdata[newdata$Income> 8000 & newdata$Loan_amount >5000 & newdata$Defaulters=="YES",]

# passive income in between 300 to 600

newdata[newdata$Passive_income > 300 & newdata$Passive_income <600 ,]

# passive what is the loan ammount of the person with passve income more than 400

newdata[newdata$Passive_income > 400,c("Name", "Loan_amount")]

# personas with high expense than income but they are not defaulters

newdata[newdata$Expenses > newdata$Income & newdata$Defaulters=="NA",]

#find the average income amount 
Avarage_income_is = mean(Income)
Avarage_income_is
