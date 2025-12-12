#bin/bash

echo "criando imagens"

docker build -t pedroms96/projeto-backend:1.0 backend/.
docker build -t pedroms96/projeto-database:1.0 database/.

echo "Realizando pushes"

docker push pedroms96/projeto-backend:1.0 
docker push pedroms96/projeto-database:1.0

echo "Criando serviços"

sudo kubectl apply -f ./services.yml

echo "Criando os deployments"

sudo kubectl apply -f ./deployment.yml