# Newark-IT Web Application 

A full-stack application for managing online computer store operations — including customer registration, credit card management, order placement, and admin-level sales analytics.


---

## Technologies Used

- **Backend:** Java Spring Boot, JPA, MySQL
- **Frontend:** HTML, CSS, JavaScript
- **Database:** MySQL (manual schema via SQL queries)
- **Version Control:** Git + GitHub

---

##  Setup Instructions

### 1. Backend (Spring Boot)

- Open `backend/` in IntelliJ or Eclipse
- Update `application.properties` with your MySQL credentials:
  ```properties
  spring.datasource.url=jdbc:mysql://localhost:3306/mydmsdapp
  spring.datasource.username=root
  spring.datasource.password=YOUR_PASSWORD

### 2.Run the Spring Boot application from your IDE or via command:
  mvn spring-boot:run
  
### 3.Frontend
-Open any HTML file (like index.html, checkout.html) in your browser
-Make sure your backend is running on localhost:8080

### Key Functionalities  
✔ Customer & Product Management  
- Register customers  
- Manage credit cards & shipping addresses  
- View and update shopping basket  

✔ Online Order System  
- Place orders via checkout.html  
- Stores transactions with date, card, and basket info  

✔ Admin Statistics (Reports)  
All reports are generated using SQL @Query annotations in Spring Boot.  
- Total amount per credit card  
- Top 10 customers  
- Most frequently sold products  
- Products bought by most distinct customers  
- Max basket total per card  
- Average price by product type  
API endpoints are listed and tested from admin-stats.html.  

### 4. SQL Schema  
All tables were manually created using SQL queries in queries.sql.  
The file includes:  
- Table creation (CREATE TABLE)  
- Foreign keys  
- Sample INSERT data  

### 5. Sample Data Testing  
You can populate the database using the sample data in queries.sql and then test full functionality through the HTML frontend connected to the backend.  





