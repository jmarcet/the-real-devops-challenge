## The challenge starts here

### Challenge 1. The API returns a list instead of an object

Fixed in first commit

### Challenge 2. Test the application in any cicd system

![CICD](./assets/cicd.logo.jpg)

Since the project already uses tox and there's a fantastic integration with tox-travis,
solved in second commit leveraging tox-travis.

### Challenge 3. Dockerize the APP

![DockerPython](./assets/docker.python.png)

Dockerfile included in third commit

### Challenge 4. Dockerize the database

![DockerMongo](./assets/docker.mongo.png)

Dockerfile included in fourth commit, plus two init files, .js & .sh to add the flask user & create the restaurant collection

### Challenge 5. Docker Compose it

![Docker Compose](./assets/docker.compose.logo.png)

compose file included in fifth commit

```
cp env-example .env
docker-compose up -d
docker-compose logs -f
```

And the API will be available at localhost:8080

### Final Challenge. Deploy it on kubernetes

![Kubernetes](./assets/kubernetes.logo.png)

Included `kubernetes_deployment.yaml` which can be locally deployed with

```
kind create cluster
kind load docker-image jmarcet/trdc:1.0.0
kind load docker-image jmarcet/trdc-mongo:1.0.0
kubectl create -f kubernetes_deployment.yaml
POD=$(kubectl get pods | awk '/^flaskapp/ { print $1 }')
kubectl port-forward --address 0.0.0.0 $POD 8080:8080
```

And the API will be available at localhost:8080

Due to a problem with the mongo_init.js not expanding the environment variables, the values are hardcoded.
