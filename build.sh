set -e

docker build -f Dockerfile.artifacts -t artifacts .

docker-compose build server

docker-compose down -v