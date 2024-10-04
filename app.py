import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy 

app = Flask(__name__)

# SQLite configuration
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///app.db'  # Create an SQLite database named app.db
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False  # Disable track modifications for performance

db = SQLAlchemy(app)

#Creating a simple model to test database functionality.
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)

# Create the database tables
with app.app_context():
    db.create_all()  # This will create the SQLite database and tables

# Home route - Displays a form to create a new user
@app.route("/", methods=["GET", "POST"])
def main():
    if request.method == "POST":
        username = request.form["username"]
        if username:
            new_user = User(username=username)
            db.session.add(new_user)
            db.session.commit()
            return f"Welcome! User {username} has been added."
    
    # Render a simple HTML form
    form_html = '''
    <form method="POST" action="/">
        <label for="username">Enter your name:</label>
        <input type="text" id="username" name="username" required>
        <button type="submit">Submit</button>
    </form>
    '''
    return render_template_string(form_html)

if existing_user:
    # Update the existing user record
    existing_user.some_field = new_value
    db.session.commit()

@app.route("/")
def main():
    return "Welcome!"

@app.route('/how are you')
def hello():
    return 'I am good, how about you?'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)





