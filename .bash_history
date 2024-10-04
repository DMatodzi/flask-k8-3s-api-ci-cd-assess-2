cd simple-webapp-flask
#Create Virtual environment to isolate dependencies required in the requiremnts.txt file, this is so they arent installed globally but are installed within the project.
python -m venv venv
source venv/Scripts/activate
#Using SQLite instead of MySql to configure credentials in app.py, by updating it 
code requirements.txt
pip install -r requirements.txt
code app.py #Updating app.py to use SQLite basically configurations
pip show flask-sqlalchemy
python
#Running the flask application 
set FLASK_APP=app.py
flask run --host=0.0.0.0 --port=8080
flask run --host=0.0.0.0 --port=8080
cd simple-webapp-flask
flask run --host=0.0.0.0 --port=8080
source venv/Scripts/activate
set FLASK_APP=app.py
flask run --host=0.0.0.0 --port=8080
set FLASK_APP=app.py
flask run --host=0.0.0.0 --port=8080
#Containerizing the flask application by building and pushing the docker image.
docker build -t treasuredm/flask-api
docker build -t treasuredm/flask-api .
docker login
docker push treasuredm/flask-api
go install sigs.k8s.io/kind@v0.24.0 #Installing KinD in GitBash and not Windows.
cd simple-webapp-flask
source venv/Scripts/activate
#Creating Kubernetes Manifests by creating a deployment.yaml and services.yaml file
nano deployment.yaml
nano service.yaml
#Applying the manifests to deploy the app
kubectl apply -f deployment.yaml
kubetcl apply -f service.yaml
kubectl apply -f service.yaml
#When applying the manifests to deploy the app the following were created "deployment.apps/flask-api created" and "service/flask-api-service created".
#Setting up a CI/CD with githubactions by creating a github/workflows directory with a cicd.yml file inside
mkdir .github
cd ../..
#Pushing local repository/cloned repository to the new github repository 
gitt init
git init
git remote add origin https://github.com/DMatodzi/flask-k8-3s-api-ci-cd-assess-2
git remote -v
[200~git remote set-url origin https://github.com/DMatodzi/flask-k8-3s-api-ci-cd-assess-2
git remote set-url origin https://github.com/DMatodzi/flask-k8-3s-api-ci-cd-assess-2
git remote -v
git add .
git commit -m "Initial commit for flask-k8-3s-api-ci-cd-assess-2"
git push -u origin main
git branch
git push -u origin master
cd flask-k8-3s-api-ci-cd-assess-2
cd ..
docker run --rm -v $(pwd):/src -v $(pwd)/reports:/report owasp/dependency-check --project "Flask API" --scan /src --out /report
[200~docker run --rm -v "$(pwd):/src" -v "$(pwd)/reports:/report" owasp/dependency-check --project "Flask API" --scan /src --out /report
docker run --rm -v "$(pwd):/src" -v "$(pwd)/reports:/report" owasp/dependency-check --project "Flask API" --scan /src --out /report
[200~docker run --rm -v "$(pwd):/src" -v "$(pwd)/reports:/report" owasp/dependency-check --project "Flask API" --scan /src --out /report
docker run --rm -v "$(pwd):/src" -v "$(pwd)/reports:/report" owasp/dependency-check --project "Flask API" --scan /src --out /report
clear
docker run --rm -v "C:\Users\Dzang\OneDrive\Documentos\CyberSafe Foundation - Cybersecurity\Soft Skills_Week 15 - Assessment_2\flask-k8-3s-api-ci-cd-assess-2:/src" -v "C:\Users\Dzang\OneDrive\Documentos\CyberSafe Foundation - Cybersecurity\Soft Skills_Week 15 - Assessment_2\flask-k8-3s-api-ci-cd-assess-2\reports:/report" owasp/dependency-check --project "Flask API" --scan /src --out /report
docker run hello-world
docker run --rm -v "C:/Users/Dzang/OneDrive/Documentos/CyberSafe Foundation - Cybersecurity/Soft Skills Week 15 - Assessment 2/flask-k8-3s-api-ci-cd-assess-2:/src" -v "C:/Users/Dzang/OneDrive/Documentos/CyberSafe Foundation - Cybersecurity/Soft Skills Week 15 - Assessment 2/flask-k8-3s-api-ci-cd-assess-2/reports:/report" owasp/dependency-check --project "Flask API" --scan /src --out /report
docker run --rm -v "C:/Users/Dzang/OneDrive/Documentos/CyberSafe Foundation - Cybersecurity/Soft Skills Week 15 - Assessment 2/flask-k8-3s-api-ci-cd-assess-2:/src" -v "C:/Users/Dzang/OneDrive/Documentos/CyberSafe Foundation - Cybersecurity/Soft Skills Week 15 - Assessment 2/flask-k8-3s-api-ci-cd-assess-2/reports:/report" owasp/dependency-check --project "Flask API" --scan /src --out /report
