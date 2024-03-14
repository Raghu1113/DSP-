import mysql.connector
from faker import Faker

# Connect to MySQL
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Meghna@1899",
    database="Project_Database"
)

# Create a cursor
cursor = db.cursor()

# Define the table schema
table_schema = (
    "CREATE TABLE healthcare_data ("
    "id INT AUTO_INCREMENT PRIMARY KEY,"
    "first_name VARCHAR(255),"
    "last_name VARCHAR(255),"
    "gender BOOLEAN,"
    "age INT,"
    "weight FLOAT,"
    "height FLOAT,"
    "health_history TEXT)"
)

# Execute the schema
cursor.execute(table_schema)

# Generate and insert sample data using Faker
fake = Faker()
for _ in range(100):
    fake_data = (
        fake.first_name(),
        fake.last_name(),
        fake.random_element(elements=('M', 'F')),
        fake.random_int(min=18, max=99),
        fake.random_int(min=100, max=300),
        fake.random_int(min=150, max=200),
        fake.text()
    )
    cursor.execute("INSERT INTO healthcare_data (first_name, last_name, gender, age, weight, height, health_history) VALUES (%s, %s, %s, %s, %s, %s, %s)", fake_data)

# Commit changes and close connections
db.commit()
cursor.close()
db.close()
