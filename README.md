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