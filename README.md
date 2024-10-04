#  Flask API with CI/CD and Kubernetes Deployment

 This README provides details of the following:

- **Project About** 
- **1. Instructions on running the project locally and deploying it**
- **2. The API’s functionality, how it was containerized and deployed on Kubernetes**
- **3. CI/CD Process using GitHub Actions**
- **4. Security measures implemented**

For further information and updates please refer to the repository. Thank you.
  
## Project About 
This project aims to develop, containerize, deploy, and secure a Flask API application utilizing Continuous Integration/Continuous Deployment (CI/CD) practices and Kubernetes orchestration.

## 1. Instructions on Running the Project Locally and Deploying it
1.	Set Up Your Development Environment

  	- Install [Python](https://www.python.org/downloads/) and ensure to add it to your PATH.
  	- Install [Git](https://git-scm.com/downloads)
    - Clone the repository:
      ```bash
          git clone https://github.com/mmumshad/simple-webapp-flask
          cd simple-webapp-flask
      ```
2. Create a Virtual Environment
   - Create and activate a virtual environment:
      ```bash
          python -m venv venv
          source venv/Scripts/activate  # Bash
      ```
3. Install Dependencies
   - Update your `requirements.txt`:
      ```bash
      Flask
      flask-sqlalchemy
      ```
    - Install the required packages:
       ```bash
         pip install -r requirements.txt
       ```
    - Update `app.py` to configure:
       ```bash
          from flask_sqlalchemy import SQLAlchemy
       
          #SQLite configuration
          app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///app.db'  # Create an SQLite database named app.db
          app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False  # Disable track modifications for performance

         db = SQLAlchemy(app)     
       ```
4.	Run the Flask Application
    - Start the Flask server:
      ```bash
          set FLASK_APP=app.py
          flask run --host=0.0.0.0 --port=8080
      ```
    - Open your browser and go to http://127.0.0.1:8080 to verify it is running.
5. Containerize the Application
    - Build and Push the Docker image:
      ```bash
        docker build -t <your-dockerhub-username>/flask-api .
        docker login
        docker push <your-dockerhub-username>/flask-api
      ```
6.	Deploy on Kubernetes (KinD)
    - Install [KinD](https://kind.sigs.k8s.io/)
    - Create a `deployment.yaml` and `service.yaml`
    - Apply the Kubernetes manifests to deploy the app:
      ```bash
          kubectl apply -f deployment.yaml
          kubectl apply -f service.yaml
      ```

## 2. The API’s functionality, how it was containerized and deployed on Kubernetes
 ### 2.1 Functionality
 The Flask API serves as a simple web application with the following endpoints:
 - GET /: Textbox for user to write username and then returns a 'Welcome User!' message.
 - GET /how are you: Responds with a friendly message.
 - GET /users: Responds with the users stored in the database.
   
When the `http://127.0.0.1:8080/` URL is visited a user has to enter their username which is then automatically stored in the database. So each time a person visits the home page and inputs their user name, the username will automatically be stored in the database

 ### 2.2 Containerization Process
  The application is containerized using Docker, allowing easy deployment across various environments. The `Dockerfile` specifies the base image and sets up the environment for running the Flask application.
 ### 2.3 Deployment on Kubernetes
 The application is deployed on Kubernetes using KinD (Kubernetes in Docker). The deployment consists of `deployment` and `service` YAML files that define how the application should run in the cluster.

 ## 3. CI/CD Process using GitHub Actions
 
 The CI/CD process is automated using GitHub Actions. The workflow consists of the following steps:
  1.	Code is checked out from the repository.
  2.	Docker Buildx is set up for building the Docker image.
  3.	DockerHub is Logged into using secrets.
  4.	The Docker image is built and pushed to DockerHub.
  5.	Kubernetes manifests are applied to deploy the application.

 ## 4. Security measures implemented
 
 To enhance the security of the API, the following measures have been implemented:

  - Database Security: Using SQLite for local development.
  - Environment Variables: Sensitive information such as the DockerHub credentials is stored as GitHub Secrets.
  - Code Reviews: Implemented code reviews and best practices to ensure secure coding practices are followed
  - Role-Based Access Control (RBAC): Kubernetes RBAC is set up to restrict access to the Kubernetes cluster.
  - Security Scans: Tools like OWASP ZAP can be utilized to perform security testing on the API.
  - Security testing was performed using tools like OWASP ZAP to identify vulnerabilities in the Flask API before deployment.
