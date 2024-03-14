from flask import Flask, render_template, request, redirect, url_for, session
import mysql.connector
from flask_bcrypt import Bcrypt
from cryptography.fernet import Fernet
import hashlib

app = Flask(__name__)
bcrypt = Bcrypt(app)
app.secret_key = '123'  # Change this to a secure random key in production

# Database connection setup
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Meghna@1899",
    database="Project_Database"
)

# Create a cursor
cursor = db.cursor()

# Check if the users table exists
cursor.execute("SHOW TABLES LIKE 'users'")
table_exists = cursor.fetchone()

# If the users table doesn't exist, create it
if not table_exists:
    cursor.execute("""
        CREATE TABLE users (
            id INT AUTO_INCREMENT PRIMARY KEY,
            username VARCHAR(255) UNIQUE NOT NULL,
            password_hash VARCHAR(60) NOT NULL,
            role VARCHAR(20) NOT NULL
        )
    """)
    db.commit()

# Check if the healthcare_data table exists
cursor.execute("SHOW TABLES LIKE 'healthcare_data'")
table_exists = cursor.fetchone()

# If the healthcare_data table doesn't exist, create it
if not table_exists:
    cursor.execute("""
        CREATE TABLE healthcare_data (
            id INT AUTO_INCREMENT PRIMARY KEY,
            first_name VARCHAR(255),
            last_name VARCHAR(255),
            gender BOOLEAN,
            age INT,
            weight FLOAT,
            height FLOAT,
            health_history TEXT
        )
    """)
    
    # Commit the changes to the database
    db.commit()

# Function to check user authentication
def check_user_authentication(username, password):
    cursor.execute("SELECT * FROM users WHERE username = %s", (username,))
    user_data = cursor.fetchone()

    if user_data and bcrypt.check_password_hash(user_data[2], password):
        return user_data
    return None

# Route for the home page
@app.route('/')
def home():
    return redirect(url_for('dashboard'))


# Routes for user authentication
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # Implement user authentication logic using bcrypt
        username = request.form.get('username')
        password = request.form.get('password')

        # Query the database for the user and check the hashed password
        user = check_user_authentication(username, password)

        if user:
            # Store user information in the session
            session['username'] = user[1]
            session['role'] = user[3]

            return redirect(url_for('dashboard'))
        else:
            return render_template('login.html', error='Invalid credentials')

    return render_template('login.html')

# Route for user registration
@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        # Get registration form data
        username = request.form.get('username')
        password = request.form.get('password')
        Role = request.form.get('role')

        # Hash the password
        hashed_password = bcrypt.generate_password_hash(password).decode('utf-8')

        # Check if the user already exists
        cursor.execute("SELECT * FROM users WHERE username = %s", (username,))
        existing_user = cursor.fetchone()

        if existing_user:
            return render_template('register.html', error='Username already exists')

        # Insert the new user into the database
        cursor.execute("INSERT INTO users (username, password_hash, role) VALUES (%s, %s, %s)", (username, hashed_password, Role))
        db.commit()

        # Redirect to the login page after successful registration
        return redirect(url_for('login'))

    return render_template('register.html')

# Route for the dashboard
@app.route('/dashboard')
def dashboard():
    # Check if the user is logged in
    if 'username' not in session:
        return redirect(url_for('login'))

    # Retrieve user information from the session
    username = session['username']
    role = session['role']

    # Fetch healthcare data from the database for rendering
    cursor.execute("SELECT * FROM healthcare_data")
    healthcare_data = cursor.fetchall()

    # Implement dashboard logic based on user roles
    if role == 'H':
        return render_template('dashboard_group_h.html', username=username, healthcare_data=healthcare_data)
    elif role == 'R':
        return render_template('dashboard_group_r.html', username=username, healthcare_data=healthcare_data)
    else:
        return "Unknown role"

# Route for user logout
@app.route('/logout')
def logout():
    session.pop('username', None)
    session.pop('role', None)
    return redirect(url_for('login'))

@app.route('/edit_data/<int:id>', methods=['GET', 'POST'])
def edit_data(id):
    # Check if the user is logged in and has the right role (Group H)
    if 'username' not in session or session['role'] != 'H':
        return redirect(url_for('login'))

    if request.method == 'POST':
        # Handle the form submission to update the data item
        new_first_name = request.form.get('new_first_name')
        new_last_name = request.form.get('new_last_name')
        new_gender = request.form.get('new_gender')  # Assuming this is a dropdown with options 'M' and 'F'
        new_age = request.form.get('new_age')
        new_weight = request.form.get('new_weight')
        new_height = request.form.get('new_height')
        new_health_history = request.form.get('new_health_history')

        # Update the database with the new data
        cursor.execute("""
            UPDATE healthcare_data
            SET first_name = %s, last_name = %s, gender = %s, age = %s, weight = %s, height = %s, health_history = %s
            WHERE id = %s
        """, (new_first_name, new_last_name, new_gender, new_age, new_weight, new_height, new_health_history, id))
        db.commit()

        # Redirect to the dashboard or a confirmation page
        return redirect(url_for('dashboard'))

    # Fetch the data item from the database for pre-filling the form
    cursor.execute ("SELECT * FROM healthcare_data WHERE id = %s", (id,))
    data_item = cursor.fetchone()
    if not data_item:
        # Data item not found, handle accordingly (e.g., redirect to dashboard)
         return redirect(url_for('dashboard'))
 # Render the edit data form
    return render_template('edit_data.html', username=session['username'], data_item=data_item)
# Function to compute SHA-256 hash
def compute_hash(data):
    sha256 = hashlib.sha256()
    sha256.update(str(data).encode())
    return sha256.hexdigest()

# Function to check single data item integrity
def check_single_data_integrity(data_item):
    # Compute hash of the retrieved data
    computed_hash = compute_hash(data_item)

    # Compare with the stored hash in the database
    return computed_hash == data_item ['hash']
# Function to check query completeness
def check_query_completeness(data, stored_hash):
    # Compute hash of the entire result set
    computed_hash = compute_hash(data)

    # Compare with the stored hash received from the client
    return computed_hash == stored_hash
# Example route for fetching a single data item
@app.route('/get_data/<int:id>')
def get_data(id):
    # Fetch data from the database based on the provided ID
    cursor.execute("SELECT * FROM healthcare_data WHERE id = %s", (id,))
    data_item = cursor.fetchone()

    # Check single data item integrity
    if check_single_data_integrity(data_item):
        # Render the data to the user
        return render_template('data_item.html', data_item=data_item)
    else:
        
        return "Invalid Credentials"

# Example route for fetching data based on a query
@app.route('/get_data_by_query')
def get_data_by_query():
    # Fetch data from the database based on the query parameters
    cursor.execute("SELECT * FROM healthcare_data WHERE gender = %s", ('M',))  # Example query
    data = cursor.fetchall()

    # Check query completeness
    stored_hash = request.args.get('hash')  # Assume the client sends the hash in the request
    if check_query_completeness(data, stored_hash):
        # Render the data to the user
        return render_template('query_result.html', data=data)
    else:
        
        return "Invalid Credentials!"

   
# Generate a key for encryption 
encryption_key = Fernet.generate_key()
cipher_suite = Fernet(encryption_key)

# Encrypt sensitive data before storing in the database
def encrypt_sensitive_data(data_item):
    encrypted_gender = cipher_suite.encrypt(str(data_item['gender']).encode())
    encrypted_age = cipher_suite.encrypt(str(data_item['age']).encode())

    # Replace original attributes with encrypted versions
    data_item['gender'] = encrypted_gender
    data_item['age'] = encrypted_age

# Decrypt data when retrieving it from the database
def decrypt_sensitive_data(data_item):
    decrypted_gender = cipher_suite.decrypt(data_item['gender']).decode()
    decrypted_age = cipher_suite.decrypt(data_item['age']).decode()

    # Replace encrypted attributes with decrypted versions
    data_item['gender'] = decrypted_gender
    data_item['age'] = decrypted_age
