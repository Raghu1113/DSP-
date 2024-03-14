# Secure Database-as-a-Service System

This is a Flask web application for a secure database-as-a-service system. The system allows users to log in, register, and view healthcare data stored in the database based on their roles (Group H or Group R).

## Prerequisites

Make sure you have the following installed:

- Python 3.x
- Flask
- MySQL Database Server
- `mysql-connector-python` package
- `Flask-Bcrypt` package

Install the required packages using the following command:

```bash
pip install Flask mysql-connector-python Flask-Bcrypt
```

## Setup

1. Clone the repository:

```bash
git clone https://github.com/your-username/secure-database-service.git
cd secure-database-service
```

2. Create a virtual environment (optional but recommended):

```bash
python -m venv venv
```

3. Activate the virtual environment:

- For Windows:

```bash
venv\Scripts\activate
```

- For macOS/Linux:

```bash
source venv/bin/activate
```

4. Install the project dependencies:

```bash
pip install -r requirements.txt
```

5. Create a MySQL database and update the database configuration in `app.py`:

```python
# Database connection setup
db = mysql.connector.connect(
    host="localhost",
    user="your_username",
    password="your_password",
    database="your_database"
)
```

6. Run the application:

```bash
python app.py
```

Visit [http://localhost:5000](http://localhost:5000) in your web browser to access the application.

## Features

- User authentication with password hashing (using Flask-Bcrypt).
- Registration of new users.
- Different dashboards for Group H and Group R with healthcare data.
- Protection of sensitive data attributes (gender and age).

## Routes

- `/login`: User login page.
- `/register`: User registration page.
- `/dashboard`: Main dashboard page based on user roles.

## Project Structure

- `templates`: HTML templates for the web pages.
- `app.py`: Main Flask application file.
- `requirements.txt`: Project dependencies.

## Contributors

- Your Name (your.email@example.com)

Feel free to contribute to this project by opening issues or submitting pull requests.