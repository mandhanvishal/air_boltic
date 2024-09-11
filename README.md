# **Part 1:**

## **ERD Diagram**
The ERD diagram for this project has been created using Hackolade tool. The exported PNG and HTML files can be found in the `docs` folder.

## **Star Schema**
I have implemented star schema data model to support monitoring and self-service analysis for the Air Boltic service. Star schema design pattern is widely used in data warehousing that offers several advantages for this use case:
- Simplicity
- Query Performance
- Scalability

I have created the following dimension and fact tables:

- Dimension tables:
- `dim_customer`: Contains information about customers
- `dim_aeroplane`: Contains information about aeroplanes

- Fact tables:
- `fct_trip`: Contains information about trips
- `fct_order`: Contains information about orders

## **Further Improments**
If I had more time available, I'd have taken additional steps that could further enhance the data model:
- **Implementing slowly changing dimensions:** Handling changes in dimension tables to track historical changes
- **Implementing data quality checks:** Setting up data validation and testing in dbt to ensure consistency and accuracy of data model
- **Setting up incremental materialization:** Using dbt incremental materialization for large datasets to improve performance
- **Creating aggregated tables:** Creating aggregated tables for common analytical queries to reduce load on data warehouse

# **Part 2:**

## **Ideal CI/CD Process with Unlimited resources**
To ensure that the data pipeline remains reliable, maintainable, and accurate as the business evolves and becomes more complex. With no limitations on tooling or resources the following environments, processes, tests, and tools can be used:

### **Development environment**
A separate dedicated environment for the developers to develop and test changes to data models and ETL processes.

### **Testing environment**
A testing environment replicated from production environment that allow QA and developer to test and validate the data results before deploying changes to production to ensure issues can be detected and resolved before any impact on production.

### **Version control**
Versioning control like Git to track changes in code which allows collaboration between team members, visibility to historic changes and easy to rollback any changes.

### **Documentation**
Documentation for each data model, pipeline or process needs to be maintained to ensure the other users have clear understanding of data models and for that we can use dbt docs and confluence tool.

### **Code review**
Implementing code review process to ensure the changes to data model or pipeline are reviewed by peers before merging into main branch

### **Automated test**
Set up automated testing processes to validate data quality, integrity, and accuracy

### **CI/CD**
Using CI like Github actions or Jenkins to create build automatically, test and validate changes deployed to repository.
Automated deployment process that move changes from testing to production environment with the rollback functionality

### **Monitoring and Alerting**
Tools like Grafana, Prometheus or Datadog can help monitor and visualize important metrics, alerts should be sent to team when predefined rules thresholds are triggered or when potential issues are detected.

## **CI/CD Process with Limited resources**
There are some suggestions to implement in CI/CD process with limited resources and imperfect tooling, considering both low effort/short term and high effort/long term improvements.

### **Low effort/short term implementation**

### **Single Development & Testing environment**
Considering limited resources, we need to reduce resource consumption by using single environment for development and testing with light-weight datasets

### **Open-source free version control tool**
We can use open-source or free VCS with hosting tools like Github, Gitlab and Bitbucket with free plan and limited features which can be sufficient for a smaller projects.

### **Manual code review**
Instead of automated code review solutions which can be expensive, we need to follow manual peer code review process and merge the changes to main branch. This can maintain code quality and issues can be detected on early stage.

### **Free testing or data quality tools**
We can use some free tools to automate testing, such as dbt tests for data validation and pytest for python.

### **High effort/long term implementation**

### **Automated CI/CD pipeline**
As the resources becomes available, we can use tools like Github actions, Gitlab CI/CD or Jenkins to automate CI/CD pipeline and speed up the develpment and deployment process

### **Advanced monitoring and alerting**
We can upgrade paid advanced monitoring and alerting tools to detect anomalies, alert on team channels with visuals to show predictive analytics