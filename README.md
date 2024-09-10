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
