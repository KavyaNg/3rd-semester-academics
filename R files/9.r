employee_df<-data.frame(
id=c(1:20),
name=c("john","emma","michael","sofhia","william","olivia","james","benjamin","kavana","kavya"),
salary=c(25000,28000,30000,22000,26000,24000,27000,29000,31000,23000),
start_date=as.Date(c("2022-05-22","2023-10-23","2018-11-23","2018-07-04","2019-02-13","2019-07-13","2004-11-28","2021-01-15","2021-07-13","2023-11-28")),
dept=c("IT","HR","Finance","IT","HR","Marketing","Finance","IT","HR","Finance")
)

write.csv(employee_df,"input.csv",row.names=False)

employee_data <- read.csv("input.csv")

num_rows <- nrow(employee_data)
num_cols <- ncol(employee_data)
cat("Total number of rows:",num_rows,"\n")
cat("Total number of columns",num_cols,"\n\n")

max_salary <- max(employee_data$salary)
cat("Maximum salary:",max_salary,"\n\n")

employee_max_salary <- 
  employee_data[employee_data$salary==max_salary,]
cat("Details of the employee with maximum salary:\n")
print(employee_max_salary)
cat("\n")

it_department <- employee_data[employee_data$dept=="IT",]
cat("Employees working in the IT Department:\n")
print(it_deparment)
cat("\n")

it_high_salary <- it_department[it_department$salary>20000,]
cat("Employees in the IT Department with salary greater than 20000:\n")
print(it_high_salary)

write.csv(it_high_salary,"F://output.csv",row.names=FALSE)
