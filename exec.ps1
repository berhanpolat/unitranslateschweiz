docker build -t auth0-python-web-01-login .
docker run --env-file .env -p 3000:3000 -it auth0-python-web-01-login
docker build -t tesseractshadow/tesseract4cmp